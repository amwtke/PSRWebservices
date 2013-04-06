package com.psr.record;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebService;

import com.psr.model.Record;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://record.psr.com/", endpointInterface = "com.psr.record.GetRecordWhereSEI", portName = "GetRecordWhereClassPort", serviceName = "GetRecordWhereClassService")
public class GetRecordWhereClass implements GetRecordWhereSEI {
	public ArrayList<Record> GetRecordWhere(String whereSQL)
			throws ClassNotFoundException, SQLException {
		if (whereSQL != null && whereSQL.length()>0) {
			java.sql.Statement st = null;
			java.sql.ResultSet rs = null;
			try {
				st = JDBCUtil.GetConnection().createStatement();
				String sql = "select * from PSR_RECORD where "+whereSQL;
				rs = st.executeQuery(sql);
				if(rs!=null)
				{
					ArrayList<Record> _retList =new ArrayList<>();
					while(rs.next())
					{
						Record temp = new Record();
						temp.setId(rs.getString("ID"));
						if(rs.getDate("CREATE_DATE")!=null)
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
						
						temp.setIsActivityInspection(rs.getBoolean("ISACTIVITYINSPECTION"));
						temp.setIsCommunication(rs.getBoolean("ISCOMMUNICATION"));
						temp.setIsCompliance(rs.getBoolean("ISCOMPLIANCE"));
						temp.setIsWalkDown(rs.getBoolean("ISWALKDOWN"));
						temp.setIsDocumentRevision(rs.getBoolean("ISDOCUMENTREVISION"));
						
						temp.setRecordDeSciption(rs.getString("RECORDDESCIPTION"));
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
