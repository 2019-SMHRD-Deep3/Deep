package com.model;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String nation;
	private String email;
	
	
	
	public MemberDTO(String id, String pw, String name, String nation, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nation = nation;
		this.email = email;
	}
	

	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}




	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
