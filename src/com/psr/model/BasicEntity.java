package com.psr.model;

import java.util.Date;

/**
 * BaseEntity entity. @author zj
 */
public class BasicEntity implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -8697105207361378885L;

	public static final Integer POSTATUS_INSERT = 0;// 编辑中
	public static final Integer POSTATUS_COMMIT = 1;// 已提交
	public static final Integer POSTATUS_DELETE = 2;// 已删除
	public static final Integer POSTATUS_BACK = 3;// 已退回
	public static final Integer POSTATUS_CHECKED = 4;// 已审批

	private String id;
	private Integer version;
	private String createUser;
	private Date createDate;
	private Integer entityStatus;
	private String updateUser;
	private Date updateDate;

	// Constructors

	/** default constructor */
	public BasicEntity() {
	}

	/** full constructor */
	public BasicEntity(Integer version, String createUser, Date createDate,
			Integer entityStatus, String updateUser, Date updateDate) {
		this.version = version;
		this.createUser = createUser;
		this.createDate = createDate;
		this.entityStatus = entityStatus;
		this.updateUser = updateUser;
		this.updateDate = updateDate;
	}

	// Property accessor
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getEntityStatus() {
		return this.entityStatus;
	}

	public void setEntityStatus(Integer entityStatus) {
		this.entityStatus = entityStatus;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}