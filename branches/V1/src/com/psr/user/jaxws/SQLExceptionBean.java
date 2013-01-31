
package com.psr.user.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Thu Jan 31 15:49:18 CST 2013
 * Generated source version: 2.7.2
 */

@XmlRootElement(name = "SQLException", namespace = "http://sql.java/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "SQLException", namespace = "http://sql.java/", propOrder = {"errorCode", "message", "nextException", "sQLState"})

public class SQLExceptionBean {

    private int errorCode;
    private java.lang.String message;
    private java.sql.SQLException nextException;
    private java.lang.String sQLState;

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int newErrorCode)  {
        this.errorCode = newErrorCode;
    }

    public java.lang.String getMessage() {
        return this.message;
    }

    public void setMessage(java.lang.String newMessage)  {
        this.message = newMessage;
    }

    public java.sql.SQLException getNextException() {
        return this.nextException;
    }

    public void setNextException(java.sql.SQLException newNextException)  {
        this.nextException = newNextException;
    }

    public java.lang.String getSQLState() {
        return this.sQLState;
    }

    public void setSQLState(java.lang.String newSQLState)  {
        this.sQLState = newSQLState;
    }

}

