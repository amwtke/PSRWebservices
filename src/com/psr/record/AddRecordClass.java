package com.psr.record;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebService;

import com.psr.model.Record;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://record.psr.com/", endpointInterface = "com.psr.record.AddRecordsSEI", portName = "AddRecordClassPort", serviceName = "AddRecordClassService")
public class AddRecordClass implements AddRecordsSEI {
	
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
	public void AddRecords(ArrayList<Record> records) throws SQLException, ClassNotFoundException {
		CallableStatement cs =null;
		try
		{
			cs = JDBCUtil.GetConnection().prepareCall(
					"{call ADDRECORD(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
			if (records != null && records.size() > 0) {
				for (Record record : records) {
					cs.clearParameters();
					
					cs.setString(1,record.getId());
					
					if(record.getCreateDate()!=null)
					{
						cs.setDate(2, new java.sql.Date(record.getCreateDate().getTime()));
					}
					else
						cs.setDate(2, null);
					
					cs.setString(3,record.getCreateUser());//uuid
					
					cs.setInt(4, -1);//EntityStatus
					cs.setDate(5, null);//V_UPDATE_DATE
					cs.setString(6, null);//V_UPDATE_USER
					
					cs.setInt(7, 0);//version
					cs.setString(8,record.getApproveBy());//approve by userloginName
					
					if(record.getApproveTime()!=null)
					{
						cs.setDate(9, new java.sql.Date(record.getApproveTime().getTime()));
					}
					else
						cs.setDate(9, null);
					
					cs.setString(10,record.getCommentS());
					cs.setString(11,null);//count
					
						cs.setString(12, record.getDanwei());
						cs.setString(13, record.getEquiptment());
					
					cs.setString(14, record.getFacility());
					
					cs.setInt(15, -1);//V_HAVEATTACHED
					cs.setInt(16, -1);//V_HAVEQIANGXIANG
					cs.setInt(17, -1);//V_HAVERUOXIANG
					cs.setInt(18, -1);//V_ISUPDATED
					cs.setInt(19, -1);//V_ISUPLOAD
					
					if(record.getInputTime()!=null)
					{
						java.sql.Date fact_inputTime=new Date(record.getInputTime().getTime());
						cs.setDate(20,fact_inputTime);//input time
					}
					else
						cs.setDate(20,null);//input time
					
					cs.setString(21,record.getInputUSer());
					cs.setString(22, record.getInputUSerSuoXie());
					
					if(record.getIsActivityInspection())//huodong
						cs.setInt(23, 1);
					else
						cs.setInt(23, 0);
					
					if(record.getIsCommunication()) //communication
						cs.setInt(24, 1);
					else
						cs.setInt(24, 0);
					
					if(record.getIsCompliance()) //compliance
						cs.setInt(25, 1);
					else
						cs.setInt(25, 0);
					
					if(record.getIsDocumentRevision()) //ducument
						cs.setInt(26, 1);
					else
						cs.setInt(26, 0);
					
					if(record.getIsWalkDown()) //walk down
						cs.setInt(27, 1);
					else
						cs.setInt(27, 0);
					
					cs.setString(28, null);//V_RESULT
					cs.setString(29, record.getRecordDeSciption());
					cs.setString(30,record.getRecordNo());
					
						cs.setString(31,record.getSendBackReaSon());
					
					
					cs.setString(32, record.getStatus());
					cs.setString(33, record.getTopic());
					cs.setString(34, record.getTopicDesc());
					
					if(record.getUpLoadedTime()!=null)
						cs.setDate(35,new java.sql.Date(record.getUpLoadedTime().getTime()));
					else
						cs.setDate(35,null);

					cs.setDate(36, new java.sql.Date(new java.util.Date().getTime()));//V_UPDATEDTIME
					
					cs.setString(37, record.getYaoSubianhao());
					cs.setString(38,record.getZhuangtibianhao());
					
					cs.execute();
				}
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
			throw ex;
		}
		finally
		{
			if(cs!=null)
				cs.close();
		}
	}
}
