package com.psr.record;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.Record;

@WebService(name = "GetRecordWhereSEI", targetNamespace = "http://record.psr.com/")
public interface GetRecordWhereSEI {

	@WebMethod(operationName = "GetRecordWhere", action = "urn:GetRecordWhere")
	@RequestWrapper(className = "com.psr.record.jaxws.GetRecordWhere", localName = "GetRecordWhere", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.GetRecordWhereResponse", localName = "GetRecordWhereResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public ArrayList<Record> GetRecordWhere(@WebParam(name = "arg0") String whereSQL)
			throws ClassNotFoundException, SQLException;

}