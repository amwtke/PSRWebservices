package com.psr.model;

// default package

import java.util.Date;

/**
 * ZjUser entity. @author zj
 */

public class User extends BasicEntity {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2569314204294120760L;
	public static final String SESSION_USER = "currentUser";
	public static final String SESSION_ROLE = "userRole";
	public static final String SESSION_USERNAME = "userName";
	public static final String UNIT_CDYY = "cdyy";//成都一院
	public static final String UNIT_GCGS = "gcgs";//工程公司
	public static final String UNIT_105S = "105S";//105所
	public static final String UNIT_728y = "728y";//728院
	public static final String UNIT_yxgs = "yxgs";//运行公司
	
	private String loginName;
	private String userName;
	private String userDesc;
	private String loginPassword;
	private Integer userAge;
	private Short userSex;
	private String userTel;
	private String userAddress;
    private String roleId;
    private String unitId;
	// Constructors

	/** default constructor */
	public User() {
	}


	/** full constructor */
	public User(Integer version, String createUser,
			Date createDate, Integer entityStatus, String updateUser,
			Date updateDate, String loginName, String userName,
			String loginPassword, Integer userAge, Short userSex,
			String userTel, String userAddress) {
		this.loginName = loginName;
		this.userName = userName;
		this.loginPassword = loginPassword;
		this.userAge = userAge;
		this.userSex = userSex;
		this.userTel = userTel;
		this.userAddress = userAddress;
	}


	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getLoginPassword() {
		return this.loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}


	public Integer getUserAge() {
		return this.userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}


	public Short getUserSex() {
		return this.userSex;
	}

	public void setUserSex(Short userSex) {
		this.userSex = userSex;
	}


	public String getUserTel() {
		return this.userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}


	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}


	public String getRoleId() {
		return roleId;
	}


	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}


	public String getUnitId() {
		return unitId;
	}


	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}


	public String getUserDesc() {
		return userDesc;
	}


	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	
	
}