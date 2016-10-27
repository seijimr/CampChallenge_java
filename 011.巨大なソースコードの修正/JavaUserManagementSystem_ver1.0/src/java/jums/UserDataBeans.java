package jums;

import java.beans.*;
import java.io.Serializable;

public class UserDataBeans implements Serializable {

    private String name;
    private int year;
    private int month;
    private int day;
    private String type;
    private String tell;
    private String comment;

    public UserDataBeans() {
        name = "";
        year = 1980;
        month = 1;
        day = 1;
        tell = "";
        type = "1";
        comment = "";
    }

    //フォーム入力を判定するメソッド
    public boolean checkInvalid() {
        if (name.equals("") || tell.equals("") ) {
            return true;
        }
        return false;
    }

    //フォームに入力された電話番号に数字以外が含まれないか判定するメソッド
    public boolean checkTellInvalid(String tell) {
        try {
            Long.parseLong(tell); //intだとオーバーフローする可能性
            return false;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    //電話番号の長さから間違いがないか判定するメソッド
    public boolean checkTellLengthInvalid() {
        if (tell.length() <= 8 || tell.length() >= 12) {
            return true;
        }
        return false;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the year
     */
    public int getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(int year) {
        this.year = year;
    }

    /**
     * @return the month
     */
    public int getMonth() {
        return month;
    }

    /**
     * @param month the month to set
     */
    public void setMonth(int month) {
        this.month = month;
    }

    /**
     * @return the day
     */
    public int getDay() {
        return day;
    }

    /**
     * @param day the day to set
     */
    public void setDay(int day) {
        this.day = day;
    }

    /**
     * @return the tell
     */
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTell() {
        return tell;
    }

    /**
     * @param tell the tell to set
     */
    public void setTell(String tell) {
        this.tell = tell;
    }

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

}
