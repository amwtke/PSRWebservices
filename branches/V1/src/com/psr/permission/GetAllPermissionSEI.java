package com.psr.permission;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.Permission;

@WebService(name = "GetAllPermissionSEI", targetNamespace = "http://permission.psr.com/")
public interface GetAllPermissionSEI {

	@WebMethod(operationName = "GetAllPermissions", action = "urn:GetAllPermissions")
	@RequestWrapper(className = "com.psr.permission.jaxws.GetAllPermissions", localName = "GetAllPermissions", targetNamespace = "http://permission.psr.com/")
	@ResponseWrapper(className = "com.psr.permission.jaxws.GetAllPermissionsResponse", localName = "GetAllPermissionsResponse", targetNamespace = "http://permission.psr.com/")
	@WebResult(name = "return")
	public ArrayList<Permission> GetAllPermissions()
			throws ClassNotFoundException, SQLException;

}