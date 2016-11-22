/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package base;

import java.beans.*;
import java.io.Serializable;
import java.util.ArrayList;
import jums.UserDataDTO;

/**
 *
 * @author morita
 */
public class querybeans implements Serializable {
    private static String querysearchresult;
    private static String queryresultdetail;

    
        public querybeans(){
        this.querysearchresult="?name=&year=";
        this.queryresultdetail="?id=0";
    }
    /**
     * @return the queryresultdetail
     */
    public static String getQueryresultdetail() {
        return queryresultdetail;
    }

    /**
     * @param aQueryresultdetail the queryresultdetail to set
     */
    public static void setQueryresultdetail(String resultdetail) {
        queryresultdetail = resultdetail;
    }

    /**
     * @return the query
     */
    public static String getQuerysearchresult() {
        return querysearchresult;
    }

    /**
     * @param query the query to set
     */
    public static void setQuerysearchresult(String searchresult) {
        querysearchresult = searchresult;
    }
    
}
