package pers.jing.entity;

import java.io.Serializable;

public class Category implements Serializable {

	private static final long serialVersionUID = -5397351824564239498L;

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	private String cid;
	private String cname;
	private String cdesc;

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCdesc() {
		return cdesc;
	}

	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}

}
