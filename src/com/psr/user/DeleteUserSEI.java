package com.psr.user;

import java.sql.SQLException;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "DeleteUserSEI", targetNamespace = "http://user.psr.com/")
public interface DeleteUserSEI {

	@WebMethod(operationName = "DeleteUser", action = "urn:DeleteUser")
	@RequestWrapper(className = "com.psr.user.jaxws.DeleteUser", localName = "DeleteUser", targetNamespace = "http://user.psr.com/")
	@ResponseWrapper(className = "com.psr.user.jaxws.DeleteUserResponse", localName = "DeleteUserResponse", targetNamespace = "http://user.psr.com/")
	@WebResult(name = "return")
	public void DeleteUser(@WebParam(name = "arg0") String userloginName) throws ClassNotFoundException,
			SQLException;

}