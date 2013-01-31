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

@WebService(name = "AddRecordsSEI", targetNamespace = "http://record.psr.com/")
public interface AddRecordsSEI {

	//	public static void main(String args[]) throws ClassNotFoundException, SQLException
	//	{
	//		AddRecordClass add = new AddRecordClass();
	//		Record r = new Record();
	//		r.setId("0D0428C34AFD492C8B1124F904aE1AA0");
	//		r.setCreateDate(new java.util.Date());
	//		r.setCreateUser("62f7d0470f9d4b2796d4c2b959cd801f");
	//		r.setCommentS("comments 不要 死啦款到即发dd");
	//		r.setDanwei("105所");
	//		r.setEquiptment("helelel");
	//		r.setFacility("秦山第二核电厂1、2号机组");
	//		r.setInputTime(new java.util.Date());
	//		r.setInputUSer("admin");
	//		r.setInputUSerSuoXie("admin");
	//		r.setIsActivityInspection(false);
	//		r.setIsCommunication(true);
	//		r.setIsCompliance(false);
	//		r.setIsDocumentRevision(true);
	//		r.setIsWalkDown(false);
	//		r.setRecordNo("QN20126成都一院dq002");
	//		r.setStatus("0");
	//		r.setTopic("topic");
	//		r.setTopicDesc("topicDesc");
	//		r.setYaoSubianhao("构筑物、系统和部件的实际状态");
	//		r.setZhuangtibianhao("构筑物状态评价专题");
	////		r.setUpLoadedTime(new java.util.Date());
	//		ArrayList<Record> _l =new ArrayList<>();
	//		_l.add(r);
	//		add.AddRecords(_l);
	//	}
	@WebMethod(operationName = "AddRecords", action = "urn:AddRecords")
	@RequestWrapper(className = "com.psr.record.jaxws.AddRecords", localName = "AddRecords", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.AddRecordsResponse", localName = "AddRecordsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public void AddRecords(@WebParam(name = "arg0") ArrayList<Record> records) throws SQLException,
			ClassNotFoundException;

}