package com.psr.record;

import com.psr.model.*;
import com.psr.util.JDBCUtil;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

public class AddFact {
	public void AddFacts(ArrayList<Fact> facts) throws SQLException, ClassNotFoundException {
		CallableStatement cs = null;
		try
		{
			cs = JDBCUtil.GetConnection().prepareCall("({call addfact(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)})");
			if(facts!=null && facts.size()>0)
			{
				for(Fact fact : facts)
				{
					cs.clearParameters();
					
					cs.setString(1,fact.getId());
					cs.setDate(2, (Date)fact.getCreateDate());
					cs.setString(3, fact.getCreateUser());
					cs.setInt(7, 0);//version
//					cs.setString(8, fact.getAgainstFacts());//result uuid
					cs.setInt(9, fact.getAssociateResult());
					cs.setString(10,fact.getContent());
					cs.setString(15, fact.getRecordID());//record no uuid
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
