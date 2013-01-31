package com.psr.user;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.User;

@WebService(name = "AddUserSEI", targetNamespace = "http://user.psr.com/")
public interface AddUserSEI {

	@WebMethod(operationName = "AddUser", action = "urn:AddUser")
	@RequestWrapper(className = "com.psr.user.jaxws.AddUser", localName = "AddUser", targetNamespace = "http://user.psr.com/")
	@ResponseWrapper(className = "com.psr.user.jaxws.AddUserResponse", localName = "AddUserResponse", targetNamespace = "http://user.psr.com/")
	@WebResult(name = "return")
	public void AddUser(@WebParam(name = "arg0") ArrayList<User> users) throws ClassNotFoundException,
			SQLException;

}