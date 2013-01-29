package com.psr.permission;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.Permission;

@WebService(name = "AddPermissionSEI", targetNamespace = "http://permission.psr.com/")
public interface AddPermissionSEI {

	@WebMethod(operationName = "AddPermissions", action = "urn:AddPermissions")
	@RequestWrapper(className = "com.psr.permission.jaxws.AddPermissions", localName = "AddPermissions", targetNamespace = "http://permission.psr.com/")
	@ResponseWrapper(className = "com.psr.permission.jaxws.AddPermissionsResponse", localName = "AddPermissionsResponse", targetNamespace = "http://permission.psr.com/")
	public void AddPermissions(@WebParam(name = "arg0") ArrayList<Permission> permissions)
			throws ClassNotFoundException, SQLException;

}