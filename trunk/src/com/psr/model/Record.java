/*
 * copy right
 */
package com.psr.model;

import java.util.Date;
import java.util.List;


/**
 * 记录
 * 
 * @author zj
 * 
 */
public class Record extends BasicEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2568993268585848090L;
	public static final String SEARCHALL= "all";//查询所有
	public static final int DIANCHANG = 0;// 电厂
	public static final int YAOSU = 1;// 要素
	public static final int ZHUANTI = 2;// 专题
	public static final String QINSANYIQI = "Q1"; //秦山一期 审核次数为1, 其它电厂的审核次数为2
	private String facility;// 针对电厂名称
	private String yaoSubianhao;// 要素编号
	private String zhuangtibianhao;// 专题编号
	private String recordNo;// 记录的编号
	private String inputUSer;// 录入者名称
	private String danwei;//录入单位
	private String status;// 记录状态
	private String topic;// 审查对象
	private String equiptment;// 设备编号
	private String topicDesc;// 审查范围

	private Boolean isActivityInspection;// 活动观察
	private Boolean isWalkDown;// 现场巡视
	private Boolean isDocumentRevision;// 文档审查
	private Boolean isCommunication;// 访谈
	private Boolean isCompliance;// 标准比对

	private String count;
	private String inputUSerSuoXie;
	private Boolean haveAttached;
	private Boolean Haveruoxiang;
	private Boolean Haveqiangxiang;
	private String reSult;
	private String recordDeSciption;//事实描述

	private Date inputTime;// 录入时间
	private Date approveTime;// 审批时间
	private String approveBy;// 审批人

	private String commentS;

	private Boolean iSUpLoad;
	private Boolean iSUpDated;
	private Date UpLoadedTime;
	private Date UpdatedTime;

	// 新加
	String SendBackReaSon;// 退回原因
	private List<Fact> facts;
	private List<RecordResult> reSultS;


	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}


	public String getYaoSubianhao() {
		return yaoSubianhao;
	}

	public void setYaoSubianhao(String yaoSubianhao) {
		this.yaoSubianhao = yaoSubianhao;
	}


	public String getZhuangtibianhao() {
		return zhuangtibianhao;
	}

	public void setZhuangtibianhao(String zhuangtibianhao) {
		this.zhuangtibianhao = zhuangtibianhao;
	}


	public String getRecordNo() {
		return recordNo;
	}

	public void setRecordNo(String recordNo) {
		this.recordNo = recordNo;
	}


	public String getInputUSer() {
		return inputUSer;
	}

	public void setInputUSer(String inputUSer) {
		this.inputUSer = inputUSer;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}


	public String getEquiptment() {
		return equiptment;
	}

	public void setEquiptment(String equiptment) {
		this.equiptment = equiptment;
	}

	
	public String getTopicDesc() {
		return topicDesc;
	}

	public void setTopicDesc(String topicDesc) {
		this.topicDesc = topicDesc;
	}

	
	public Boolean getIsActivityInspection() {
		return isActivityInspection;
	}

	public void setIsActivityInspection(Boolean isActivityInspection) {
		this.isActivityInspection = isActivityInspection;
	}

	
	public Boolean getIsWalkDown() {
		return isWalkDown;
	}

	public void setIsWalkDown(Boolean isWalkDown) {
		this.isWalkDown = isWalkDown;
	}

	
	public Boolean getIsDocumentRevision() {
		return isDocumentRevision;
	}

	public void setIsDocumentRevision(Boolean isDocumentRevision) {
		this.isDocumentRevision = isDocumentRevision;
	}

	
	public Boolean getIsCommunication() {
		return isCommunication;
	}

	public void setIsCommunication(Boolean isCommunication) {
		this.isCommunication = isCommunication;
	}

	
	public Boolean getIsCompliance() {
		return isCompliance;
	}

	public void setIsCompliance(Boolean isCompliance) {
		this.isCompliance = isCompliance;
	}

	
	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	
	public String getDanwei() {
		return danwei;
	}

	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}

	
	public String getInputUSerSuoXie() {
		return inputUSerSuoXie;
	}

	public void setInputUSerSuoXie(String inputUSerSuoXie) {
		this.inputUSerSuoXie = inputUSerSuoXie;
	}

	
	public Boolean getHaveAttached() {
		return haveAttached;
	}

	public void setHaveAttached(Boolean haveAttached) {
		this.haveAttached = haveAttached;
	}

	
	public Boolean getHaveruoxiang() {
		return Haveruoxiang;
	}

	public void setHaveruoxiang(Boolean haveruoxiang) {
		Haveruoxiang = haveruoxiang;
	}

	
	public Boolean getHaveqiangxiang() {
		return Haveqiangxiang;
	}

	public void setHaveqiangxiang(Boolean haveqiangxiang) {
		Haveqiangxiang = haveqiangxiang;
	}

	
	public String getReSult() {
		return reSult;
	}

	public void setReSult(String reSult) {
		this.reSult = reSult;
	}

	
	public String getRecordDeSciption() {
		return recordDeSciption;
	}

	public void setRecordDeSciption(String recordDeSciption) {
		this.recordDeSciption = recordDeSciption;
	}

	
	public Date getInputTime() {
		return inputTime;
	}

	public void setInputTime(Date inputTime) {
		this.inputTime = inputTime;
	}

	public Date getApproveTime() {
		return approveTime;
	}

	public void setApproveTime(Date approveTime) {
		this.approveTime = approveTime;
	}

	
	public String getApproveBy() {
		return approveBy;
	}

	public void setApproveBy(String approveBy) {
		this.approveBy = approveBy;
	}

	
	public String getCommentS() {
		return commentS;
	}

	public void setCommentS(String commentS) {
		this.commentS = commentS;
	}

	
	public Boolean getiSUpLoad() {
		return iSUpLoad;
	}

	public void setiSUpLoad(Boolean iSUpLoad) {
		this.iSUpLoad = iSUpLoad;
	}

	
	public Boolean getiSUpDated() {
		return iSUpDated;
	}

	public void setiSUpDated(Boolean iSUpDated) {
		this.iSUpDated = iSUpDated;
	}

	public Date getUpLoadedTime() {
		return UpLoadedTime;
	}

	public void setUpLoadedTime(Date upLoadedTime) {
		UpLoadedTime = upLoadedTime;
	}

	public Date getUpdatedTime() {
		return UpdatedTime;
	}

	public void setUpdatedTime(Date updatedTime) {
		UpdatedTime = updatedTime;
	}

	
	public String getSendBackReaSon() {
		return SendBackReaSon;
	}

	public void setSendBackReaSon(String sendBackReaSon) {
		SendBackReaSon = sendBackReaSon;
	}

	
	public List<Fact> getFacts() {
		return facts;
	}

	public void setFacts(List<Fact> facts) {
		this.facts = facts;
	}

	
	public List<RecordResult> getReSultS() {
		return reSultS;
	}

	public void setReSultS(List<RecordResult> reSultS) {
		this.reSultS = reSultS;
	}

}
