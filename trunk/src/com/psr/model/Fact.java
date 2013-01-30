package com.psr.model;

/**
 * 事实
 * 
 * @author Administrator
 * 
 */
public class Fact extends BasicEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1578594724486793322L;
	private String recordID;//
	private Integer factNo;
	

	private String againstFacts;// 结果的 id
	private String content; // 事实内容
	private String FuHeXiang;
	private String PianChaXiang;
	private String strFactStatus;
	private String strFactApproveComment;
	private Integer associateResult;
	private Boolean isFh;
	private Boolean isPc;
	private String imagesPath;
	
	public String getImagesPath() {
		return imagesPath;
	}

	public void setImagesPath(String imagesPath) {
		this.imagesPath = imagesPath;
	}
	
	public String getRecordID() {
		return recordID;
	}

	public void setRecordID(String recordID) {
		this.recordID = recordID;
	}

	public String getAgainstFacts() {
		return againstFacts;
	}

	public void setAgainstFacts(String againstFacts) {
		this.againstFacts = againstFacts;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFuHeXiang() {
		return FuHeXiang;
	}

	public void setFuHeXiang(String fuHeXiang) {
		FuHeXiang = fuHeXiang;
	}

	public String getPianChaXiang() {
		return PianChaXiang;
	}

	public void setPianChaXiang(String pianChaXiang) {
		PianChaXiang = pianChaXiang;
	}


	public String getStrFactStatus() {
		return strFactStatus;
	}

	public void setStrFactStatus(String strFactStatus) {
		this.strFactStatus = strFactStatus;
	}

	
	public String getStrFactApproveComment() {
		return strFactApproveComment;
	}

	public void setStrFactApproveComment(String strFactApproveComment) {
		this.strFactApproveComment = strFactApproveComment;
	}


	public Integer getAssociateResult() {
		return associateResult;
	}

	public void setAssociateResult(Integer associateResult) {
		this.associateResult = associateResult;
	}

	
	public Boolean getIsFh() {
		return isFh;
	}

	public void setIsFh(Boolean isFh) {
		this.isFh = isFh;
	}

	
	public Boolean getIsPc() {
		return isPc;
	}

	public void setIsPc(Boolean isPc) {
		this.isPc = isPc;
	}
	
	
	public Integer getFactNo() {
		return factNo;
	}

	public void setFactNo(Integer factNo) {
		this.factNo = factNo;
	}

}
