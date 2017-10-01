package com.safewind.sean.service.impl;

import com.safewind.sean.mapper.RoleDao;
import com.safewind.sean.mapper.UserDao;
import com.safewind.sean.po.PasswordHelper;
import com.safewind.sean.po.Role;
import com.safewind.sean.po.User;
import com.safewind.sean.po.UserRole;
import com.safewind.sean.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {
	private static Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private UserDao userDao;
	@Autowired
	private RoleDao roleDao;
	@Autowired
	private PasswordHelper passwordHelper;

	/**
	 *
	 * @return userRoleList 用户角色列表
     */
	public List<UserRole> getUserRoleList() {

		List<UserRole> userRoleList = new ArrayList<UserRole>();
		//获取所有用户
		Set<User> userSet = userDao.queryUsers();
		//使用foreach
		for(User user:userSet){
            List<Role> roleList = roleDao.queryRolesByUserId(user.getId());
            UserRole userRole = new UserRole();
            userRole.setUser(user);
            userRole.setRoleList(roleList);
            userRole.setRolesString(this.listToString(roleList));
            userRoleList.add(userRole);
		}
		//日志打印
        logger.info("成功获取所有用户和角色对应关系");
		return userRoleList;
	}

	/**
	 * 创建一个对应studentId的账户
	 * 账户相对船员是唯一的
	 * 账户密码初始化的时候是要和studentId是一致的
	 * create_username 就是获取创建这个人的那个人的username（账号）
	 * 
	 * @param user  用户登录表信息
	 */
	public User createUser(User user) {
		// 加密密码
		passwordHelper.encryptPassword(user);
		Long id = userDao.createUser(user);
		user.setId(id);
		return user;
	}

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(Long userId, String newPassword) {
		User user = userDao.findOne(userId);
		user.setPassword(newPassword);
		//加密密码
		passwordHelper.encryptPassword(user);
		//更新用户
		userDao.updateUser(user);
	}

	/**
	 * 添加用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void correlationRoles(Long userId, Long... roleIds) {
		if (roleIds == null || roleIds.length == 0) {
			return;
		}
		for (Long roleId : roleIds) {
			if (!exists(userId, roleId)) {
				userDao.correlationRoles(userId, roleId);
			}
		}
	}

	/**
	 * 移除用户-角色关系
	 * 
	 * @param userId
	 * @param roleIds
	 */
	public void uncorrelationRoles(Long userId, Long... roleIds) {
		if (roleIds == null || roleIds.length == 0) {
			return;
		}
		for (Long roleId : roleIds) {
			if (exists(userId, roleId)) {
				userDao.uncorrelationRoles(userId, roleId);
			}
		}
	}

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}

	/**
	 * 根据用户名查找其角色
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> findRoles(String username) {
		return userDao.findRoles(username);
	}

	/**
	 * 根据用户名查找其权限
	 * 
	 * @param username
	 * @return
	 */
	public Set<String> findPermissions(String username) {
		return userDao.findPermissions(username);
	}

	private boolean exists(Long userId, Long roleId) {
		return userDao.exists(userId, roleId);
	}

	public void delete() {
		userDao.delete1();
		userDao.delete2();
		userDao.delete3();
		userDao.delete4();
		userDao.delete5();
	}

	@Override
	@Transactional
	public void userRoleUpdate(Long userId, Long... roleIds) {
		logger.info("更新用户"+ userId + "-角色事务开始：");
		//删除所有用户-角色关系
		userDao.uncorrelationAllRoles(userId);
		logger.info("删除用户-角色关系！");
		//添加新的关系
		this.correlationRoles(userId,roleIds);
		logger.info("插入新的用户角色关系");
		logger.info("事务结束");
	}

	@Override
	public boolean validatePassword(String username, String password) {

		User user=userDao.findByUsername(username);
		//用户输入的更原密码，加密转换   需要与加密是一样 才能得到相同的加密密码
		String Password = new SimpleHash("md5", password,
				ByteSource.Util.bytes(username+user.getSalt()),
				2).toHex();

//		//数据库中用户的密码（经过加密的）
//		System.out.println("Password==="+user.getPassword());
//		//用户输入密码 经过加密后的值
//		System.out.println("password==="+Password);
		if(Password.equals(user.getPassword()))
		{
			return true;
		}else{
			return false;
		}
	}

	/**
     * list --->String  逗号分隔
     */
    protected   String listToString(List<Role> oList){
        if(oList.size() == 0){
            return "";
        }
        StringBuilder sb = new StringBuilder("");

        for(Role r:oList){
            sb.append(r.getDescription() + ",");
        }
        String result = sb.toString();
        result = result.substring(0,result.length()-1);
        return result;
    }
}
