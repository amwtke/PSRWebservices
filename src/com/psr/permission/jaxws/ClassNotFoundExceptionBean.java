
package com.psr.permission.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Thu Jan 31 15:52:42 CST 2013
 * Generated source version: 2.7.2
 */

@XmlRootElement(name = "ClassNotFoundException", namespace = "http://lang.java/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ClassNotFoundException", namespace = "http://lang.java/", propOrder = {"exception", "message"})

public class ClassNotFoundExceptionBean {

    private java.lang.Throwable exception;
    private java.lang.String message;

    public java.lang.Throwable getException() {
        return this.exception;
    }

    public void setException(java.lang.Throwable newException)  {
        this.exception = newException;
    }

    public java.lang.String getMessage() {
        return this.message;
    }

    public void setMessage(java.lang.String newMessage)  {
        this.message = newMessage;
    }

}
