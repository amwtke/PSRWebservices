package com.psr.record;

import java.util.*;
import java.sql.*;

import javax.jws.WebService;

import com.psr.model.RecordResult;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://record.psr.com/", endpointInterface = "com.psr.record.AddResultsSEI", portName = "AddResultsClassPort", serviceName = "AddResultsClassService")
public class AddResultsClass implements AddResultsSEI{
	// public static void main(String args[]) throws ClassNotFoundException,
	// SQLException {
	// RecordResult result = new RecordResult();
	// result.setId("d81db2a3be2b4211817d27c249c89ee2");
	// result.setCreateDate(new java.util.Date());
	// result.setCreateUser("lry");
	// result.setContent("sdfsadfsadfsadfasf");
	// result.setFactNos("1,2,3");
	// result.setRecordID("27fca0d7724044288a3f134875bcbb38");
	// result.setResultNo(2);
	// result.setIsFH(false);
	// result.setIsPC(true);
	// ArrayList<RecordResult> _ls =new ArrayList<>();
	// _ls.add(result);
	// AddResultsClass add =new AddResultsClass();
	// add.AddResults(_ls);
	//
	// }

	public void AddResults(ArrayList<RecordResult> results)
			throws ClassNotFoundException, SQLException {
		CallableStatement cs = null;
		try {
			if (results != null && results.size() > 0)
				for (RecordResult result : results) {
					cs = JDBCUtil.GetConnection().prepareCall(
							"{call ADDRESULT(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
					cs.clearParameters();

					cs.setString(1, result.getId());

					if (result.getCreateDate() != null)
						cs.setDate(2, new java.sql.Date(result.getCreateDate()
								.getTime()));
					else
						cs.setDate(2, null);

					cs.setString(3, result.getCreateUser());

					cs.setInt(4, -1);
					if (result.getUpdateDate() != null)
						cs.setDate(5, new java.sql.Date(result.getUpdateDate()
								.getTime()));
					else
						cs.setDate(5, null);

					cs.setString(6, result.getUpdateUser());
					cs.setInt(7, 0);
					cs.setString(8, result.getContent());

					if (result.getIsFH())
						cs.setInt(9, 1);
					else
						cs.setInt(9, 0);

					if (result.getIsPC())
						cs.setInt(10, 1);
					else
						cs.setInt(10, 0);

					cs.setString(11, result.getRecordID());
					cs.setString(12, result.getFactNos());
					cs.setInt(13, result.getResultNo());
					cs.setString(14, result.getRecordNo());
					cs.execute();
				}
		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		} finally {
			if (cs != null)
				cs.close();
		}
	}
}
