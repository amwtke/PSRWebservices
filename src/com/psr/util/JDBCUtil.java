package com.psr.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.psr.config.ConfigurationManager;

public class JDBCUtil {
	//2012-20121120KC PRODUCE
	private final static String DB_DRIVER = ConfigurationManager.getString("DB_DRIVER");//"oracle.jdbc.driver.OracleDriver";
	private final static String DB_CONNECTION = ConfigurationManager.getString("DB_CONNECTION");//"jdbc:oracle:thin:@psr:1521:psr";
	private final static String DB_NAME = ConfigurationManager.getString("DB_NAME");//"psr";
	private final static String DB_PWd = ConfigurationManager.getString("DB_PWd");//"123456";
//	public static void main(String[] args)
//	{
//		System.out.println(DB_DRIVER);
//		System.out.println(DB_CONNECTION);
//		System.out.println(DB_NAME);
//		System.out.println(DB_PWd);
//	}
	static Connection conn = null;
	static {
		try {
			Class.forName(DB_DRIVER);
			conn = DriverManager.getConnection(DB_CONNECTION, DB_NAME, DB_PWd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DoWhenShutDown();
	}

	public static Connection GetConnection() throws SQLException,
			ClassNotFoundException {
		
		if (conn!=null && conn.isClosed()) {
			synchronized (conn) {
				if (conn!=null && conn.isClosed()) {
					Class.forName(DB_DRIVER);
					conn = DriverManager.getConnection(DB_CONNECTION, DB_NAME,
							DB_PWd);
				}
			}
		}
		return conn;
	}
	
	private static void CloseJDBC() throws SQLException
	{
		if( conn!=null && !conn.isClosed())
			conn.close();
	}
	
	private static void DoWhenShutDown()
	{
		Runtime run=Runtime.getRuntime();//当前 Java 应用程序相关的运行时对象。  
        run.addShutdownHook(new Thread(){ //注册新的虚拟机来关闭钩子  
            @Override  
            public void run() {  
                //程序结束时进行的操作  
            	try {
					CloseJDBC();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                System.out.println("程序结束!");  
            }  
        });  
	}
}
