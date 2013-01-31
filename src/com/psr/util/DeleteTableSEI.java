package com.psr.util;

import java.sql.SQLException;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "DeleteTableSEI", targetNamespace = "http://util.psr.com/")
public interface DeleteTableSEI {

	@WebMethod(operationName = "DeleteTable", action = "urn:DeleteTable")
	@RequestWrapper(className = "com.psr.util.jaxws.DeleteTable", localName = "DeleteTable", targetNamespace = "http://util.psr.com/")
	@ResponseWrapper(className = "com.psr.util.jaxws.DeleteTableResponse", localName = "DeleteTableResponse", targetNamespace = "http://util.psr.com/")
	@WebResult(name = "return")
	public void DeleteTable(@WebParam(name = "arg0") String tableName) throws ClassNotFoundException,
			SQLException;

}