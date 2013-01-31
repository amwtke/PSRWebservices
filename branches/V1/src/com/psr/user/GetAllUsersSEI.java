package com.psr.user;

import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.User;

@WebService(name = "GetAllUsersSEI", targetNamespace = "http://user.psr.com/")
public interface GetAllUsersSEI {

	@WebMethod(operationName = "GetAllUsers", action = "urn:GetAllUsers")
	@RequestWrapper(className = "com.psr.user.jaxws.GetAllUsers", localName = "GetAllUsers", targetNamespace = "http://user.psr.com/")
	@ResponseWrapper(className = "com.psr.user.jaxws.GetAllUsersResponse", localName = "GetAllUsersResponse", targetNamespace = "http://user.psr.com/")
	@WebResult(name = "return")
	public ArrayList<User> GetAllUsers() throws Exception;

}