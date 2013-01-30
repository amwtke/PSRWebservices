package com.psr.user;

import java.sql.*;

import javax.jws.WebService;

import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://user.psr.com/", endpointInterface = "com.psr.user.GetUserUUIDSEI", portName = "GetUserUUIDClassPort", serviceName = "GetUserUUIDClassService")
public class GetUserUUIDClass implements GetUserUUIDSEI {
//	public static void main(String args[]) throws ClassNotFoundException, SQLException
//	{
//		GetUserUUIDClass uuid = new GetUserUUIDClass()
//		;
//		System.out.println(uuid.GetUserUUID("lry"));
//	}

	public String GetUserUUID(String userloginName) throws ClassNotFoundException, SQLException
	{
		if(userloginName!=null)
		{
			Statement cs=null;
			ResultSet rs = null;
			try
			{
				String sql ="select * from sys_user where LOGIN_NAME="+"\'"+userloginName+"\'";
				cs = JDBCUtil.GetConnection().createStatement();
				rs = cs.executeQuery(sql);
				while(rs.next())
				{
					return rs.getString("ID");//只有一个
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
				if(rs!=null)
					rs.close();
			}
		}
		return null;
	}
}
