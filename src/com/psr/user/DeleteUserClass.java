package com.psr.user;

import java.sql.SQLException;

import javax.jws.WebService;

import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://user.psr.com/", endpointInterface = "com.psr.user.DeleteUserSEI", portName = "DeleteUserClassPort", serviceName = "DeleteUserClassService")
public class DeleteUserClass implements DeleteUserSEI {
	
//	public static void main(String args[]) throws ClassNotFoundException, SQLException
//	{
//		DeleteUserClass delete = new DeleteUserClass();
//		delete.DeleteUser("zkf");
//	}
	
	public void DeleteUser(String userloginName) throws ClassNotFoundException, SQLException {
		if (userloginName != null) {
			java.sql.Statement st = null;
			try {
				st = JDBCUtil.GetConnection().createStatement();
				if (userloginName == "DELETE ALL") 
				{
					String sql = "delete from sys_user";
					st.executeUpdate(sql);
				} 
				else 
				{
					String sql = "delete from sys_user where LOGIN_NAME =\'" +userloginName+"\'";
					st.executeUpdate(sql);
				}
			} catch (SQLException ex) {
				throw ex;
			} finally {
				if (st != null)
					st.close();
			}
		}
	}

}
