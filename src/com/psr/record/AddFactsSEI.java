package com.psr.record;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import com.psr.model.Fact;

@WebService(name = "AddFactsSEI", targetNamespace = "http://record.psr.com/")
public interface AddFactsSEI {

	//	public static void main(String args[]) throws ClassNotFoundException, SQLException
	//	{
	//		AddFactsClass _add = new AddFactsClass();
	//		ArrayList<Fact> _l =new ArrayList<>();
	//		Fact f = new Fact();
	//		f.setId("29cd3c22a12f4109a0774b90aee715b6");
	//		f.setContent("test fact");
	//		f.setCreateDate(new java.util.Date());
	//		f.setCreateUser("lry");
	//		f.setAgainstFacts("1");
	//		f.setRecordID("6afabd85264743549c77dea155df2637");
	//		f.setFactNo(1);
	//		f.setAssociateResult(0);
	//		f.setImagesPath("kkk\\kdjflas\\");
	//		_l.add(f);
	//		_add.AddFacts(_l);
	//	}
	@WebMethod(operationName = "AddFacts", action = "urn:AddFacts")
	@RequestWrapper(className = "com.psr.record.jaxws.AddFacts", localName = "AddFacts", targetNamespace = "http://record.psr.com/")
	@ResponseWrapper(className = "com.psr.record.jaxws.AddFactsResponse", localName = "AddFactsResponse", targetNamespace = "http://record.psr.com/")
	@WebResult(name = "return")
	public void AddFacts(@WebParam(name = "arg0") ArrayList<Fact> facts) throws SQLException,
			ClassNotFoundException;

}