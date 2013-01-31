package com.psr.record;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.Fact;
import com.psr.model.Record;
import com.psr.model.RecordResult;

@WebService(name = "GetOperationSEI", targetNamespace = "http://record.psr.com/")
public interface GetOperationSEI {

	//	public static void main(String args[])
	//	{
	//		GetOperationClass op = new GetOperationClass();
	//		ArrayList<Record> _records = op.GetRecords(recordNo);
	//	}
	@WebMethod(operationName = "GetFacts", action = "urn:GetFacts")
	@RequestWrapper(className = "com.psr.record.jaxws.GetFacts", localName = "GetFacts", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.GetFactsResponse", localName = "GetFactsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public ArrayList<Fact> GetFacts(@WebParam(name = "arg0") String recordNo)
			throws ClassNotFoundException, SQLException;

	@WebMethod(operationName = "GetResults", action = "urn:GetResults")
	@RequestWrapper(className = "com.psr.record.jaxws.GetResults", localName = "GetResults", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.GetResultsResponse", localName = "GetResultsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public ArrayList<RecordResult> GetResults(@WebParam(name = "arg0") String recordNo)
			throws ClassNotFoundException, SQLException;

	@WebMethod(operationName = "GetRecords", action = "urn:GetRecords")
	@RequestWrapper(className = "com.psr.record.jaxws.GetRecords", localName = "GetRecords", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.GetRecordsResponse", localName = "GetRecordsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public ArrayList<Record> GetRecords(@WebParam(name = "arg0") String recordNo)
			throws ClassNotFoundException, SQLException;

}