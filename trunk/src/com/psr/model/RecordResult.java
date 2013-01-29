package com.psr.model;


/**
 * 
 * @author 结果
 */
public class RecordResult extends BasicEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1075836108042142212L;
	public static final String ISPC="偏差项";
	public static final String ISFH="符合项";
	
	private String recordID;//
	private Integer resultNo;
	private String factNos;//1,2,3

	private String content;//
	private Boolean isPC;// 偏差项
	private Boolean isFH;// 符合项
    private String itemName;//确定是偏差项还是符合项
	

	
	public String getRecordID() {
		return recordID;
	}

	public void setRecordID(String recordID) {
		this.recordID = recordID;
	}

	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	public Boolean getIsPC() {
		return isPC;
	}

	public void setIsPC(Boolean isPC) {
		this.isPC = isPC;
	}

	
	public Boolean getIsFH() {
		return isFH;
	}

	public void setIsFH(Boolean isFH) {
		this.isFH = isFH;
	}
	
	public Integer getResultNo() {
		return resultNo;
	}

	public void setResultNo(Integer resultNo) {
		this.resultNo = resultNo;
	}
	
	public String getFactNos() {
		return factNos;
	}

	public void setFactNos(String factNos) {
		this.factNos = factNos;
	}
	
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
}
