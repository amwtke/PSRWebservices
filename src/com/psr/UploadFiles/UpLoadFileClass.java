package com.psr.UploadFiles;

import javax.jws.WebService;

import com.psr.util.FileUtil;

@WebService(targetNamespace = "http://UploadFiles.psr.com/", endpointInterface = "com.psr.UploadFiles.UpLoadFileSEI", portName = "UpLoadFileClassPort", serviceName = "UpLoadFileClassService")
public class UpLoadFileClass implements UpLoadFileSEI {

	public void UpLoad(byte[] fileBytes, String folderName, String fileName) {
		FileUtil.GenFile(fileBytes, folderName, fileName);
	}

}
