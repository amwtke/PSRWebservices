/*
 * copyRight
 */
package com.psr.model;


/**
 * 用户权限
 * 
 * @author Administrator
 * 
 */
public class UserPermissionRel extends BasicEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4106439712129616719L;
	private String userId;
	private String permId;


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPermId() {
		return permId;
	}

	public void setPermId(String permId) {
		this.permId = permId;
	}
}
