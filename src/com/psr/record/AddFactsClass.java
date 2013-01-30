package com.psr.record;

import com.psr.model.*;
import com.psr.util.JDBCUtil;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

public class AddFactsClass {
	
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
//		_l.add(f);
//		_add.AddFacts(_l);
//	}
	public void AddFacts(ArrayList<Fact> facts) throws SQLException, ClassNotFoundException {
		CallableStatement cs = null;
		try
		{
			cs = JDBCUtil.GetConnection().prepareCall("{call addfact(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
			if(facts!=null && facts.size()>0)
			{
				for(Fact fact : facts)
				{
					cs.clearParameters();
					
					cs.setString(1,fact.getId());
					cs.setDate(2, new java.sql.Date(fact.getCreateDate().getTime()));
					cs.setString(3, fact.getCreateUser());
					cs.setInt(4, 0);
					if(fact.getUpdateDate()!=null)
						cs.setDate(5, new java.sql.Date(fact.getUpdateDate().getTime()));
					else
						cs.setDate(5, null);//P_UPDATE_DATE
					cs.setString(6,fact.getUpdateUser());
					cs.setInt(7, 0);//version
					cs.setString(8, fact.getAgainstFacts());//result uuid
					
					if(fact.getAssociateResult()!=null)
						cs.setInt(9, fact.getAssociateResult());
					else
						cs.setInt(9, 0);
					
					cs.setString(10,fact.getContent());
					cs.setString(11,fact.getFuHeXiang());
					cs.setInt(12, -1);
					cs.setInt(13, -1);
					cs.setString(14, fact.getPianChaXiang());

					cs.setString(15, fact.getRecordID());//record no uuid
					cs.setString(16, fact.getStrFactApproveComment());
					cs.setString(17,fact.getStrFactStatus());
					cs.setInt(18,fact.getFactNo());
					cs.execute();
				}
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
		}
	}

}
