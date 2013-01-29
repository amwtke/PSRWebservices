package com.psr.userpermissionrel;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.UserPermissionRel;

@WebService(name = "AddUserPermissionRelSEI", targetNamespace = "http://userpermissionrel.psr.com/")
public interface AddUserPermissionRelSEI {

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
	@WebMethod(operationName = "AddUserPermissionRel", action = "urn:AddUserPermissionRel")
	@RequestWrapper(className = "com.psr.userpermissionrel.jaxws.AddUserPermissionRel", localName = "AddUserPermissionRel", targetNamespace = "http://userpermissionrel.psr.com/")
	@ResponseWrapper(className = "com.psr.userpermissionrel.jaxws.AddUserPermissionRelResponse", localName = "AddUserPermissionRelResponse", targetNamespace = "http://userpermissionrel.psr.com/")
	@WebResult(name = "return")
	public void AddUserPermissionRel(@WebParam(name = "arg0") ArrayList<UserPermissionRel> rels)
			throws SQLException, ClassNotFoundException;

}