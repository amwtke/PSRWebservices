package com.psr.UploadFiles;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "UpLoadFileSEI", targetNamespace = "http://UploadFiles.psr.com/")
public interface UpLoadFileSEI {

	@WebMethod(operationName = "UpLoad", action = "urn:UpLoad")
	@RequestWrapper(className = "com.psr.UploadFiles.jaxws.UpLoad", localName = "UpLoad", targetNamespace = "http://UploadFiles.psr.com/")
	@ResponseWrapper(className = "com.psr.UploadFiles.jaxws.UpLoadResponse", localName = "UpLoadResponse", targetNamespace = "http://UploadFiles.psr.com/")
	@WebResult(name = "return")
	public void UpLoad(@WebParam(name = "arg0") byte[] fileBytes, @WebParam(name = "arg1") String folderName, @WebParam(name = "arg2") String fileName);

}