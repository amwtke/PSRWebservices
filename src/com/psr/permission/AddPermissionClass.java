package com.psr.permission;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebService;

import com.psr.model.Permission;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://permission.psr.com/", endpointInterface = "com.psr.permission.AddPermissionSEI", portName = "AddPermissionClassPort", serviceName = "AddPermissionClassService")
public class AddPermissionClass implements AddPermissionSEI {
//	public static void main(String args[]) throws ClassNotFoundException, SQLException {
//		ArrayList<Permission> ps = new ArrayList<Permission>();
//		Permission p = new Permission();
//		p.setId("968E0A69036D4957ACACB01E305D4CFE");
//		p.setVersion(0);
//		p.setPerDesc("05");
//		p.setPerName("老化");
//		p.setPerPid("bd6d0b0a5f0d461cb4cadb6ac20e7bf9");
//		p.setPerType(1);
//		
//		Permission pp = new Permission();
//		pp.setId("707B814541E74D2C9068CBC07586A692");
//		pp.setVersion(0);
//		pp.setPerDesc("06");
//		pp.setPerName("辐射环境影响");
//		pp.setPerPid("bd6d0b0a5f0d461cb4cadb6ac20e7bf9");
//		pp.setPerType(1);
//		
//		ps.add(p);ps.add(pp);
//		try
//		{
//		AddPermissions(ps);
//		}
//		catch(SQLException e)
//		{
//			e.printStackTrace();
//		}
//	}

	public void AddPermissions(ArrayList<Permission> permissions) throws ClassNotFoundException, SQLException {
		CallableStatement cs = null;
		try{
				if(permissions!=null && permissions.size()>0)
				{

					cs = JDBCUtil.GetConnection().prepareCall(
							"{call ADDPERMISSION(?,?,?,?,?,?,?,?)}");
//					System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++");
//					System.out.println("共"+permissions.size()+"个！");
					for(Permission p : permissions)
					{
//						System.out.println("per id:"+p.getId());
//						System.out.println("per type:"+p.getPerType());
						cs.clearParameters();
						cs.setString(1, p.getId());// id
						cs.setInt(2, 0);// version
						cs.setString(3, p.getPerDesc());
						cs.setString(4, p.getPerName());
						cs.setString(5, p.getPerPid());
						cs.setInt(6, 1);//p.getPerSortno());
						cs.setInt(7, p.getPerType());
						cs.setString(8, "URL");//p.getUrl());
						cs.execute();
					}
				}
		}
		catch(SQLException e)
		{
			throw e;
		}
		finally
		{
			if(null !=cs)
				cs.close();
		}
	}
}
