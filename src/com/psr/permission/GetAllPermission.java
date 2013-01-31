package com.psr.permission;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebService;

import oracle.jdbc.OracleTypes;

import com.psr.model.Permission;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://permission.psr.com/", endpointInterface = "com.psr.permission.GetAllPermissionSEI", portName = "GetAllPermissionPort", serviceName = "GetAllPermissionService")
public class GetAllPermission implements GetAllPermissionSEI {
	
//public static void main(String args[]) throws ClassNotFoundException, SQLException
//{
//	ArrayList<Permission> plist = GetAllPermissions();
//	for(Permission p : plist)
//	{
//		System.out.println("-------------------------------------------------------");
//		System.out.print(p.getId());
//		System.out.print("|"+p.getPerDesc());
//		System.out.print("|"+p.getPerName());
//		System.out.print("|"+p.getPerPid());
//		System.out.print("|"+p.getPerType());
//		System.out.println();
//	}
//}
	
public ArrayList<Permission> GetAllPermissions() throws ClassNotFoundException, SQLException
{
	CallableStatement cs =null;
	ResultSet rs = null;
	ArrayList<Permission> retArray = new ArrayList<Permission>();
	try
	{
		cs = JDBCUtil.GetConnection().prepareCall("{call SHOWALLPERMISSION(?)}");
		cs.registerOutParameter(1, OracleTypes.CURSOR);
		cs.execute();
		rs = (ResultSet) cs.getObject(1);
		while(rs.next())
		{
			Permission p = new Permission();
			p.setId(rs.getString("ID"));
			p.setPerDesc(rs.getString("PER_DESC"));
			p.setPerName(rs.getString("PER_NAME"));
			p.setPerPid(rs.getString("PER_PID"));
			p.setPerType(rs.getInt("PER_TYPE"));
			retArray.add(p);
		}
		
		return retArray;
	}
	catch(SQLException e)
	{
		throw e;
	}
	finally
	{
		if(rs!=null)
			rs.close();
		if(cs!=null)
			cs.close();
	}
}

}
