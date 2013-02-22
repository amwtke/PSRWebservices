package com.psr.model;

public class PSRFile extends BasicEntity {
	private static final long serialVersionUID = 1578594724486793322L;
	private String file_desc;
	private String file_name;
	private String file_path;
	private String re_id;

	public String getFileDesc() {
		return this.file_desc;
	}

	public void setFileDesc(String fileDesc) {
		this.file_desc = fileDesc;
	}

	public String getFileName() {
		return this.file_name;
	}

	public void setFileName(String fileName) {
		this.file_name = fileName;
	}

	public String getFilePath() {
		return this.file_path;
	}

	public void setFilePath(String filePath) {
		this.file_path = filePath;
	}

	public String getReId() {
		return this.re_id;
	}

	public void setReId(String reid) {
		this.re_id = reid;
	}
}
