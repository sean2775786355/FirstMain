/**
 * Spring 中使用Formatter 只适用于String到其他对象
 * Spring 中使用Formatter是一个不错的选择
 */
package com.safewind.sean.converter;

import org.springframework.format.Formatter;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Locale;

public class LocalDateFormatter implements Formatter<LocalDate> {
    private DateTimeFormatter formatter;
    private String datePattern;
    public LocalDateFormatter(String datePattern)
    {
        this.datePattern = datePattern;
        formatter=DateTimeFormatter.ofPattern(datePattern);
    }
    @Override
    public LocalDate parse(String s, Locale locale) throws ParseException {
        try{
            return LocalDate.parse(s,DateTimeFormatter.ofPattern(datePattern));
        }catch (DateTimeParseException e){
//            this error messasge will be display in <form:errors>
            throw new IllegalArgumentException("invalid date format. Please use this pattern\""+datePattern+"\"");
        }

    }

    @Override
    public String print(LocalDate localDate, Locale locale) {
        return localDate.format(formatter);
    }
}
