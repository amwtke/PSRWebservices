package com.psr.permission;

import java.sql.SQLException;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "DeleteAllPermissionSEI", targetNamespace = "http://permission.psr.com/")
public interface DeleteAllPermissionSEI {

	@WebMethod(operationName = "DeleteAllPermission", action = "urn:DeleteAllPermission")
	@RequestWrapper(className = "com.psr.permission.jaxws.DeleteAllPermission", localName = "DeleteAllPermission", targetNamespace = "http://permission.psr.com/")
	@ResponseWrapper(className = "com.psr.permission.jaxws.DeleteAllPermissionResponse", localName = "DeleteAllPermissionResponse", targetNamespace = "http://permission.psr.com/")
	@WebResult(name = "return")
	public void DeleteAllPermission() throws ClassNotFoundException,
			SQLException;

}