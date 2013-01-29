package com.psr.model;

// default package

import java.util.List;

/**
 * ZjPermission entity. @author zj
 */
public class Permission extends BasicEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7197428627960823113L;
	public static final int MENU_TYPE = 1;// 菜单类型
	public static final int BUTTON_TYPE = 2;// 按钮类型
	public static final int ROOT_TYPE = -1;
	public static final String MENU_ROOT_ID = "0";
	public static final String MENU_ROOT_PID = "-1";

	// Fields
	private String perName;
	private Integer perType;

	private String url;
	private String perIcon;

	private String perDesc;
	private Integer perSortno;
	private String perPid;
	private Boolean checked;
	private List<Permission> childPerResources;

	// Constructors

	/** default constructor */
	public Permission() {
	}

	/** full constructor */
	public Permission(String perName, Integer perType, String url,
			String perDesc, Integer perSortno, String perPid) {
		this.perName = perName;
		this.perType = perType;
		this.url = url;
		this.perDesc = perDesc;
		this.perSortno = perSortno;
		this.perPid = perPid;
	}


	public String getPerName() {
		return this.perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}


	public Integer getPerType() {
		return this.perType;
	}

	public void setPerType(Integer perType) {
		this.perType = perType;
	}


	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}


	public String getPerDesc() {
		return this.perDesc;
	}

	public void setPerDesc(String perDesc) {
		this.perDesc = perDesc;
	}


	public Integer getPerSortno() {
		return this.perSortno;
	}

	public void setPerSortno(Integer perSortno) {
		this.perSortno = perSortno;
	}


	public String getPerPid() {
		return this.perPid;
	}

	public void setPerPid(String perPid) {
		this.perPid = perPid;
	}


	public String getPerIcon() {
		return perIcon;
	}

	public void setPerIcon(String perIcon) {
		this.perIcon = perIcon;
	}


	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}


	public List<Permission> getChildPerResources() {
		return childPerResources;
	}

	public void setChildPerResources(List<Permission> childPerResources) {
		this.childPerResources = childPerResources;
	}
}