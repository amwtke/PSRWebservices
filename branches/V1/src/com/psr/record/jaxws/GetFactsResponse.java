
package com.psr.record.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 2.7.2
 * Thu Jan 31 16:51:55 CST 2013
 * Generated source version: 2.7.2
 */

@XmlRootElement(name = "GetFactsResponse", namespace = "http://record.psr.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetFactsResponse", namespace = "http://record.psr.com/")

public class GetFactsResponse {

    @XmlElement(name = "return")
    private java.util.ArrayList<com.psr.model.Fact> _return;

    public java.util.ArrayList<com.psr.model.Fact> getReturn() {
        return this._return;
    }

    public void setReturn(java.util.ArrayList<com.psr.model.Fact> new_return)  {
        this._return = new_return;
    }

}
