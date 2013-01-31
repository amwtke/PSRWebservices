package com.psr.permission;

import java.sql.SQLException;

import javax.jws.WebService;

import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://permission.psr.com/", endpointInterface = "com.psr.permission.DeleteAllPermissionSEI", portName = "DeletePermissionClassPort", serviceName = "DeletePermissionClassService")
public class DeletePermissionClass implements DeleteAllPermissionSEI {

	public void DeleteAllPermission() throws ClassNotFoundException,
			SQLException {

		java.sql.Statement st = null;
		try {
			st = JDBCUtil.GetConnection().createStatement();

			String sql = "delete from sys_permission";
			st.executeUpdate(sql);

		} catch (SQLException ex) {
			throw ex;
		} finally {
			if (st != null)
				st.close();
		}

	}
}
