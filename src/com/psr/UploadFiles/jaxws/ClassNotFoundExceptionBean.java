
package com.psr.UploadFiles.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Sun Mar 10 10:32:19 CST 2013
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

