package com.psr.user;

import java.sql.CallableStatement;
import java.sql.SQLException;

import com.psr.model.User;
import com.psr.util.JDBCUtil;

import java.util.ArrayList;

import javax.jws.WebService;

@WebService(targetNamespace = "http://user.psr.com/", endpointInterface = "com.psr.user.AddUserSEI", portName = "AddUserClassPort", serviceName = "AddUserClassService")
public class AddUserClass implements AddUserSEI {

//	 public static void main(String args[]) throws ClassNotFoundException,
//	 SQLException
//	 {
//	 User u = new User();
//	 u.setId("03CA38ADF9D0481E904570F7D73BB1E3");
//	 u.setLoginName("test");
//	 u.setLoginPassword("test1");
//	 u.setRoleId("yaosulry");
//	 u.setUnitId("105S");
//	 u.setUserName("测试");
//	 u.setUserDesc("ts");
//	 
//	 User uu = new User();
//	 uu.setId("6E25AFC08DA54B32A61D368D934D94FC");
//	 uu.setLoginName("test2");
//	 uu.setLoginPassword("test2");
//	 uu.setRoleId("yaosuscy");
//	 uu.setUnitId("yxgs");
//	 uu.setUserName("测试2");
//	 uu.setUserDesc("ts2");
//	 
//	 ArrayList<User> users= new ArrayList<User>();
//	 users.add(u);users.add(uu);
//	 try
//	 {
//	 AddUser(users);
//	 }
//	 catch(SQLException e)
//	 {
//	 throw e;
//	 }
//	 }

	public void AddUser(ArrayList<User> users)
			throws ClassNotFoundException, SQLException {
		CallableStatement stmt = null;
		try {

			stmt = JDBCUtil.GetConnection().prepareCall(
					"{call ADDUSER(?,?,?,?,?,?,?,?)}");
			if (users != null && users.size() > 0) {
				int runcount = 0;
				for (User user : users) {
					stmt.clearParameters();
					
					stmt.setString(1, user.getId());// id
					stmt.setInt(2, 0);// version
					stmt.setString(3, user.getLoginName());
					stmt.setString(4, user.getLoginPassword());
					stmt.setString(5, user.getRoleId());
					stmt.setString(6, user.getUnitId());
					stmt.setString(7, user.getUserName());
					stmt.setString(8, user.getUserDesc());
					stmt.execute();
					runcount++;
					
					if(runcount==290)
					{
						stmt.close();
						try {
							Thread.sleep(100);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						stmt = JDBCUtil.GetConnection().prepareCall(
								"{call ADDUSER(?,?,?,?,?,?,?,?)}");
						runcount=0;
					}
				}
			}
		} catch (SQLException e) {

			e.printStackTrace();
			throw e;
		} finally {
			if (stmt != null)
				stmt.close();
		}
	}
}