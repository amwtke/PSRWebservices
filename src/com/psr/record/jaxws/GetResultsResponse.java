
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

@XmlRootElement(name = "GetResultsResponse", namespace = "http://record.psr.com/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GetResultsResponse", namespace = "http://record.psr.com/")

public class GetResultsResponse {

    @XmlElement(name = "return")
    private java.util.ArrayList<com.psr.model.RecordResult> _return;

    public java.util.ArrayList<com.psr.model.RecordResult> getReturn() {
        return this._return;
    }

    public void setReturn(java.util.ArrayList<com.psr.model.RecordResult> new_return)  {
        this._return = new_return;
    }

}

