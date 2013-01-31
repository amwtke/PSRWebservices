package com.psr.util;

import java.sql.SQLException;

import javax.jws.WebService;

@WebService(targetNamespace = "http://util.psr.com/", endpointInterface = "com.psr.util.DeleteTableSEI", portName = "DeleteTableClassPort", serviceName = "DeleteTableClassService")
public class DeleteTableClass implements DeleteTableSEI {
	public void DeleteTable(String tableName) throws ClassNotFoundException,
			SQLException {

		java.sql.Statement st = null;
		try {
			if (tableName != null) {
				st = JDBCUtil.GetConnection().createStatement();
				String sql = "delete from " + tableName;
				st.executeUpdate(sql);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
			throw ex;
		} finally {
			if (st != null)
				st.close();
		}

	}
}
