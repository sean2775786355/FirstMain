package com.safewind.sean.po;

import com.safewind.sean.constant.DBMsgConstant;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component
public class User implements Serializable {
	private Long id;
	private String studentId;
	private String username;
	private String password;
	private String salt;		//盐，实际上就是注册用户时产生的16进制的随机数，作用是用于后面密码的加盐操作
	private String createUsername; //创建人id（操作人的id）
	private Date createTime; //创建人时间
	private String headPic;	//头像
	private	String content; //描述
	private int status;	//账户状态 0 锁定 1正常 2 禁用
	private int rank; //排序（好像没用）
	private int isDel; //是否删除  0 不删 1删
	/**
	 * 验证用户密码是否正确，需要数据库存放用户注册时产生的salt和用户设置的登录密码，
	 * 经过程序指定的算法计算，得到的密码为数据库存放的密码，由与salt是随机产生的，基本不可能破解密码
	 * 假如有两个用户申请的用户名，登录密码一样，但是由于salt不一样，产生在数据库存放的密码一般是不一样的
	 * 除非，两用户产生的salt是一样的
	 */


	private Boolean locked ;

	public User() {
		this.locked = Boolean.FALSE; //默认是false
		this.isDel = 0; //默认0 没被删除
		this.status = 1; //默认1 正常
		this.content = DBMsgConstant.H_ADMIN_USER_CONTENT; //默认备注
		//还有个默认头像 先忽略
	}

	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	//用户名+密码的认证盐
	public String getCredentialsSalt() {
		return username + salt;
	}

	public Boolean getLocked() {
		return locked;
	}

	public void setLocked(Boolean locked) {
		this.locked = locked;
	}

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getCreateUsername() {
        return createUsername;
    }

    public void setCreateUsername(String createUsername) {
        this.createUsername = createUsername;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}


	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		User user = (User) o;

		//比较用户的id,是否相等，因为数据库的用户id具有唯一性
		if (id != null ? !id.equals(user.id) : user.id != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		return id != null ? id.hashCode() : 0;
	}

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("User{");
        sb.append("id=").append(id);
        sb.append(", studentId='").append(studentId).append('\'');
        sb.append(", username='").append(username).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", salt='").append(salt).append('\'');
        sb.append(", createUsername='").append(createUsername).append('\'');
        sb.append(", createTime=").append(createTime);
        sb.append(", headPic='").append(headPic).append('\'');
        sb.append(", content='").append(content).append('\'');
        sb.append(", status=").append(status);
        sb.append(", rank=").append(rank);
        sb.append(", isDel=").append(isDel);
        sb.append(", locked=").append(locked);
        sb.append('}');
        return sb.toString();
    }
}