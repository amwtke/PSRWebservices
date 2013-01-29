package com.psr.user;

import java.sql.*;
import java.util.*;

import javax.jws.WebService;

import com.psr.model.User;
import com.psr.util.JDBCUtil;

import oracle.jdbc.*;

@WebService(targetNamespace = "http://user.psr.com/", endpointInterface = "com.psr.user.GetAllUsersSEI", portName = "GetAllUserPort", serviceName = "GetAllUserService")
public class GetAllUser implements GetAllUsersSEI {

	
//	public static void main(String args[]) throws Exception
//	{
//		try
//		{
//		 ArrayList<User> _users =	GetAllUsers();
//		 for(User u : _users)
//		 {
//			 System.out.println(u.getId());
//			 System.out.println(u.getUserName());
//		 }
//		}
//		catch(Exception ex)
//		{
//			ex.printStackTrace();
//		}
//		finally
//		{
//			
//		}
//	}
//	

	   public ArrayList<User> GetAllUsers() throws Exception {  

	       
	       CallableStatement stmt = null;  
	       ResultSet rs = null;  
	       try {  
	           
	           stmt = JDBCUtil.GetConnection().prepareCall("{call showalluser(?)}");  
	  
	           stmt.registerOutParameter(1, OracleTypes.CURSOR);  
	           stmt.execute();  
	  
	           // getXxx(index)中的index 需要和上面registerOutParameter的index对应  
	           rs = (ResultSet) stmt.getObject(1);  
	           // 获取列名及类型  
//	           int colunmCount = rs.getMetaData().getColumnCount();  //colum count
	           ArrayList<User> retUsers = new ArrayList<User>();
	           while (rs.next()) {  
 
	                   User u = new User();
	                   u.setId(rs.getString("ID"));
	                   u.setLoginName(rs.getString("LOGIN_NAME"));
	                   u.setLoginPassword(rs.getString("LOGIN_PASSWORD"));
	                   u.setUserName(rs.getString("USER_NAME"));
	                   u.setUserDesc(rs.getString("USER_DESC"));
	               retUsers.add(u);
	           }  
	           return retUsers;
	           
//	           String[] colNameArr = new String[colunmCount];  
//	           String[] colTypeArr = new String[colunmCount]; 

//	           for (int i = 0; i < colunmCount; i++) {  
//	               colNameArr[i] = rs.getMetaData().getColumnName(i + 1);  
//	               colTypeArr[i] = rs.getMetaData().getColumnTypeName(i + 1);  
////	               System.out.print(colNameArr[i] + "(" + colTypeArr[i] + ")"  
////	                       + " | ");  
//	           }  
	           
//	           System.out.println();  
//	           while (rs.next()) {  
//	               StringBuffer sb = new StringBuffer();  
//	               for (int i = 0; i < colunmCount; i++) {  
//	                   sb.append(rs.getString(i + 1) + " | ");  
//	               }
//	               System.out.println(sb);  
//	           }  
	           
//	           System.out.println("------- Test Proc Out is ResultSet end. ");  
	  
	       } catch (Exception e) {  
	           throw e;
	       }
	       finally
	       {
	    	   if (null != stmt) {  
	               stmt.close();  
	           }  
	       }
	   }  
}
