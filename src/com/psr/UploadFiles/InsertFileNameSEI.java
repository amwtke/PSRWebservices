package com.psr.UploadFiles;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.PSRFile;

@WebService(name = "InsertFileNameSEI", targetNamespace = "http://UploadFiles.psr.com/")
public interface InsertFileNameSEI {

	@WebMethod(operationName = "InsertFileDB", action = "urn:InsertFileDB")
	@RequestWrapper(className = "com.psr.UploadFiles.jaxws.InsertFileDB", localName = "InsertFileDB", targetNamespace = "http://UploadFiles.psr.com/")
	@ResponseWrapper(className = "com.psr.UploadFiles.jaxws.InsertFileDBResponse", localName = "InsertFileDBResponse", targetNamespace = "http://UploadFiles.psr.com/")
	@WebResult(name = "return")
	public void InsertFileDB(@WebParam(name = "arg0") ArrayList<PSRFile> files)
			throws ClassNotFoundException, SQLException;

}