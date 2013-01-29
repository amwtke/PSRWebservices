package com.psr.userpermissionrel;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebService;

import com.psr.model.UserPermissionRel;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://userpermissionrel.psr.com/", endpointInterface = "com.psr.userpermissionrel.AddUserPermissionRelSEI", portName = "AddUserPermissionRelClassPort", serviceName = "AddUserPermissionRelClassService")
public class AddUserPermissionRelClass implements AddUserPermissionRelSEI {
//	public static void main(String args[]) throws ClassNotFoundException, SQLException {
//		UserPermissionRel r1 = new UserPermissionRel();
//		UserPermissionRel r2 =new UserPermissionRel();
//		UserPermissionRel r3 =new UserPermissionRel();
//		
//		r1.setId("5CF82429646947AD9D23-5988E5FC9214"); r2.setId("9C01CEACDF534B4AA953A7859C3CD813");
//		r1.setUserId("03CA38ADF9D0481E904570F7D73BB1E3");r2.setUserId("03CA38ADF9D0481E904570F7D73BB1E3");
//		r1.setPermId("0");r2.setPermId("d29eff5e932640b7b179473f9535f76f");
//		r3.setId("C354C0AC7E60433AB0CBE1012D4A9DDD"); r3.setUserId("03CA38ADF9D0481E904570F7D73BB1E3");
//		r3.setPermId("10f7d0d581b740bab4c6c5576b4acb0b");
//		
//		ArrayList<UserPermissionRel> rels = new ArrayList<UserPermissionRel>();
//		rels.add(r1);rels.add(r2);rels.add(r3);
//		AddUserPermissionRel(rels);
//	}
	public void AddUserPermissionRel(ArrayList<UserPermissionRel> rels) throws SQLException, ClassNotFoundException
	{
		CallableStatement cs = null;
		try{
				if(rels!=null && rels.size()>0)
				{
					cs = JDBCUtil.GetConnection().prepareCall(
							"{call adduserpermissionrel(?,?,?,?)}");
					for(UserPermissionRel r : rels)
					{

						cs.clearParameters();
						
						cs.setString(1, r.getId());// id
						cs.setInt(2, 0);// version
						cs.setString(3, r.getPermId());
						cs.setString(4, r.getUserId());
						
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
