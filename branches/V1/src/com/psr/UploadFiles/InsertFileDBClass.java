package com.psr.UploadFiles;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.*;

import javax.jws.WebService;

import com.psr.model.*;
import com.psr.util.FileUtil;
import com.psr.util.JDBCUtil;

@WebService(targetNamespace = "http://UploadFiles.psr.com/", endpointInterface = "com.psr.UploadFiles.InsertFileNameSEI", portName = "InsertFileDBClassPort", serviceName = "InsertFileDBClassService")
public class InsertFileDBClass implements InsertFileNameSEI {

//	public static void main(String args[]) throws ClassNotFoundException, SQLException
//	{
//		PSRFile f1 = new PSRFile();
//		PSRFile f2 =new PSRFile();
//		f1.setCreateDate(new Date());
//		f1.setCreateUser("肖劲");
//		//f1.setEntityStatus(0);
//		f1.setFileDesc("文件");
//		f1.setFileName("floww现场.jpg");
//		f1.setFilePath("E:\\psr\\tomcat7\\webapps\\psr\\files\\录入员-图片\\Q311004成都一院lry001w\\事实1");
//		f1.setId("F874F6246545467EB348969D9560C628");
//		f1.setReId("414317FA5B184058-82BCD9C13AAA768C");
//		
//		f2.setCreateDate(new Date());
//		f2.setCreateUser("肖劲2");
//		//f1.setEntityStatus(0);
//		f2.setFileDesc("文件2");
//		f2.setFileName("floww现场2.jpg");
//		f2.setFilePath("E:\\psr\\tomcat7\\webapps\\psr\\files\\录入员-图片\\Q311004成都一院lry001w\\事实2");
//		f2.setId("F874F6246545467EB348969D9560C629");
//		f2.setReId("414317FA5B184058-82BCD9C13AAA768D");
//		
//		ArrayList<PSRFile> _l =new ArrayList<>();
//		_l.add(f1);_l.add(f2);
//		
//		InsertFileDBClass _this =new InsertFileDBClass();
//		_this.InsertFileDB(_l);
//	}
	
	public void InsertFileDB(ArrayList<PSRFile> files)
			throws ClassNotFoundException, SQLException {
		CallableStatement cs = null;
		if (files != null && files.size() > 0) {
			try {
				cs = JDBCUtil.GetConnection().prepareCall(
						"{call ADDFILE(?,?,?,?,?,?,?,?,?,?,?)}");
				for (PSRFile file : files) {
					cs.clearParameters();
					
					cs.setString(1, file.getId());	
					cs.setDate(2, new java.sql.Date(file.getCreateDate().getTime()));
					cs.setString(3,file.getCreateUser());
					
					if(file.getEntityStatus()!=null)
						cs.setInt(4, file.getEntityStatus());
					else
						cs.setInt(4, 0);
					
					if(file.getUpdateDate()!=null)
						cs.setDate(5,new java.sql.Date(file.getUpdateDate().getTime()));
					else
						cs.setDate(5,null);
					cs.setString(6, file.getUpdateUser());
					cs.setInt(7, 0);//version
					cs.setString(8, file.getFileDesc());
					cs.setString(9,file.getFileName());
					cs.setString(10, FileUtil.PSRFileFolderWithOutEndSlash+"\\"+file.getFilePath());
					cs.setString(11,file.getReId());
					
					cs.execute();
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
				throw ex;
			} finally {
				if (cs != null)
					cs.close();
			}
		}
	}

}
