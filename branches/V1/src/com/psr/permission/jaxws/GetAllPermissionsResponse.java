
package com.psr.permission.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Mon Jan 28 22:46:03 CST 2013
 * Generated source version: 2.7.2
 */

@XmlRootElement(name = "GetAllPermissionsResponse", namespace = "http://permission.psr.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetAllPermissionsResponse", namespace = "http://permission.psr.com/")

public class GetAllPermissionsResponse {

    @XmlElement(name = "return")
    private java.util.ArrayList<com.psr.model.Permission> _return;

    public java.util.ArrayList<com.psr.model.Permission> getReturn() {
        return this._return;
    }

    public void setReturn(java.util.ArrayList<com.psr.model.Permission> new_return)  {
        this._return = new_return;
    }

}
