
package com.psr.util.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Thu Jan 31 15:57:21 CST 2013
 * Generated source version: 2.7.2
 */

@XmlRootElement(name = "DeleteTable", namespace = "http://util.psr.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "DeleteTable", namespace = "http://util.psr.com/")

public class DeleteTable {

    @XmlElement(name = "arg0")
    private java.lang.String arg0;

    public java.lang.String getArg0() {
        return this.arg0;
    }

    public void setArg0(java.lang.String newArg0)  {
        this.arg0 = newArg0;
    }

}
