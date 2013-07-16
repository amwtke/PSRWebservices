package com.psr.record;

import java.sql.SQLException;
import java.util.*;

import javax.jws.WebService;

import com.psr.model.*;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://record.psr.com/", endpointInterface = "com.psr.record.GetOperationSEI", portName = "GetOperationClassPort", serviceName = "GetOperationClassService")
public class GetOperationClass implements GetOperationSEI {

//	 public static void main(String args[]) throws ClassNotFoundException,
//	 SQLException
//	 {
//	 GetOperationClass op = new GetOperationClass();
//	 ArrayList<Fact> _records = op.GetFacts("QN10330工程公司licl006");
//	 ArrayList<RecordResult> _recordresult = op.GetResults("QN10330工程公司licl006");
//	 if(_records==null || _records.size()==0)
//		 System.out.print("无数据");
//	 System.out.println(_records.get(0).getContent());
//	 System.out.println(_recordresult.get(0).getContent());
//	 }
	 
	 
	public ArrayList<Fact> GetFacts(String recordNo)
			throws ClassNotFoundException, SQLException {
		if (recordNo != null) {
			java.sql.Statement st = null;
			java.sql.ResultSet rs = null;
			try {
				st = JDBCUtil.GetConnection().createStatement();
				String recordId = GetRecords(recordNo).get(0).getId();
				String sql = "select * from PSR_FACT where RECORDID=\'" + recordId
						+ "\'";
				rs = st.executeQuery(sql);
				
				if (rs != null) {
					ArrayList<Fact> _retList = new ArrayList<>();
					while (rs.next()) {
						Fact temp = new Fact();
						temp.setId(rs.getString("ID"));
						if (rs.getDate("CREATE_DATE") != null)
							temp.setCreateDate(rs.getDate("CREATE_DATE"));

						temp.setCreateUser(rs.getString("CREATE_USER"));
						temp.setAssociateResult(rs.getInt("ASSOCIATERESULT"));
						temp.setContent(rs.getString("CONTENT"));
						temp.setRecordID(rs.getString("RECORDID"));
						temp.setFactNo(rs.getInt("FACTNO"));
						temp.setImagesPath(rs.getString("IMAGES_PATH"));
						temp.setRecordNo(rs.getString("RECORDNO"));
						_retList.add(temp);
					}
					return _retList;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
				throw ex;
			} finally {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
			}
		}
		return null;
	}

	public ArrayList<RecordResult> GetResults(String recordNo)
			throws ClassNotFoundException, SQLException {
		if (recordNo != null) {
			java.sql.Statement st = null;
			java.sql.ResultSet rs = null;
			try {
				st = JDBCUtil.GetConnection().createStatement();
				String recordId = GetRecords(recordNo).get(0).getId();
				String sql = "select * from PSR_RECORDRESULT where RECORDID=\'" + recordId
						+ "\'";
				rs = st.executeQuery(sql);
				
				if (rs != null) {
					ArrayList<RecordResult> _retList = new ArrayList<>();
					while (rs.next()) {
						RecordResult temp = new RecordResult();
						temp.setId(rs.getString("ID"));
						if (rs.getDate("CREATE_DATE") != null)
							temp.setCreateDate(rs.getDate("CREATE_DATE"));

						temp.setCreateUser(rs.getString("CREATE_USER"));

						temp.setIsFH(rs.getBoolean("ISFH"));
						temp.setIsPC(rs.getBoolean("ISPC"));

						temp.setContent(rs.getString("CONTENT"));
						temp.setRecordID(rs.getString("RECORDID"));

						temp.setFactNos(rs.getString("FACTNOS"));
						temp.setResultNo(rs.getInt("RESULTNO"));
						temp.setRecordNo(rs.getString("RECORDNO"));
						_retList.add(temp);
					}
					return _retList;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
				throw ex;
			} finally {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
			}
		}
		return null;
	}

	public ArrayList<Record> GetRecords(String recordNo)
			throws ClassNotFoundException, SQLException {
		if (recordNo != null) {
			java.sql.Statement st = null;
			java.sql.ResultSet rs = null;
			try {
				st = JDBCUtil.GetConnection().createStatement();
				String sql = "select * from PSR_RECORD where RECORDNO=\'"
						+ recordNo + "\'";
				rs = st.executeQuery(sql);
				if (rs != null) {
					ArrayList<Record> _retList = new ArrayList<>();
					while (rs.next()) {
						Record temp = new Record();
						temp.setId(rs.getString("ID"));
						if (rs.getDate("CREATE_DATE") != null)
							temp.setCreateDate(rs.getDate("CREATE_DATE"));

						temp.setCreateUser(rs.getString("CREATE_USER"));
						temp.setRecordNo(rs.getString("RECORDNO"));
						temp.setApproveBy(rs.getString("APPROVERBY"));
						temp.setApproveTime(rs.getDate("APPROVERTIME"));
						temp.setCommentS(rs.getString("COMMENTS"));
						temp.setDanwei(rs.getString("DANWEI"));
						temp.setEquiptment(rs.getString("EQUIPTMENT"));
						temp.setFacility(rs.getString("FACILITY"));
						temp.setInputTime(rs.getDate("INPUTTIME"));
						temp.setInputUSer(rs.getString("INPUTUSER"));
						temp.setInputUSerSuoXie(rs.getString("INPUTUSERSUOXIE"));

						temp.setIsActivityInspection(rs
								.getBoolean("ISACTIVITYINSPECTION"));
						temp.setIsCommunication(rs
								.getBoolean("ISCOMMUNICATION"));
						temp.setIsCompliance(rs.getBoolean("ISCOMPLIANCE"));
						temp.setIsWalkDown(rs.getBoolean("ISWALKDOWN"));
						temp.setIsDocumentRevision(rs
								.getBoolean("ISDOCUMENTREVISION"));

						temp.setRecordDeSciption(rs
								.getString("RECORDDESCIPTION"));
						temp.setSendBackReaSon(rs.getString("SENDBACKREASON"));
						temp.setStatus(rs.getString("PSR_STATUS"));
						temp.setTopic(rs.getString("TOPIC"));
						temp.setTopicDesc(rs.getString("TOPICDESC"));
						temp.setYaoSubianhao(rs.getString("YAOSUBINHAO"));
						temp.setZhuangtibianhao(rs.getString("ZHUANGTIBIANHAO"));

						_retList.add(temp);
					}
					return _retList;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
				throw ex;
			} finally {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
			}
		}
		return null;
	}
}
