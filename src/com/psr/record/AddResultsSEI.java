package com.psr.record;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.RecordResult;

@WebService(name = "AddResultsSEI", targetNamespace = "http://record.psr.com/")
public interface AddResultsSEI {

	@WebMethod(operationName = "AddResults", action = "urn:AddResults")
	@RequestWrapper(className = "com.psr.record.jaxws.AddResults", localName = "AddResults", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.AddResultsResponse", localName = "AddResultsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public void AddResults(@WebParam(name = "arg0") ArrayList<RecordResult> results)
			throws ClassNotFoundException, SQLException;

}