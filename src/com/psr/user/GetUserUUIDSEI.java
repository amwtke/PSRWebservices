package com.psr.user;

import java.sql.SQLException;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "GetUserUUIDSEI", targetNamespace = "http://user.psr.com/")
public interface GetUserUUIDSEI {

	@WebMethod(operationName = "GetUserUUID", action = "urn:GetUserUUID")
	@RequestWrapper(className = "com.psr.user.jaxws.GetUserUUID", localName = "GetUserUUID", targetNamespace = "http://user.psr.com/")
	@ResponseWrapper(className = "com.psr.user.jaxws.GetUserUUIDResponse", localName = "GetUserUUIDResponse", targetNamespace = "http://user.psr.com/")
	@WebResult(name = "return")
	public String GetUserUUID(@WebParam(name = "arg0") String userloginName)
			throws ClassNotFoundException, SQLException;

}