package org.camp.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author morita
 */
public class ResultData implements Serializable{
    private Date d;
    private String luck;
    
    public ResultData(){}
    
    /**
     * 
     * @return the d
     */
    public Date getD(){
        return d;
    }
    
    /**
     * 
     * @param d the d to set
     */
    public void setD(Date d){
        this.d=d;
    }
    
    /**
     * 
     * @return the luck 
     */
    public String getLuck(){
        return luck;
    }

    public void setLuck(String string) {
        this.luck = string;
    }
    /**
     * @param luck the luck to set
     */
}
