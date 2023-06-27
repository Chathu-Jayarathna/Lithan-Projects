package com.spring.mvc.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;

@javax.persistence.Entity(name = "Job_table")
@javax.persistence.Table(name = "Job_table")
public class Job {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "jobid")
	private Long jobid;
	@NotNull
	
	private String jobcatagory;
	@NotNull
	private String jobname;
	@NotNull
	@Column(length = 1000)
	private String employer;
	@NotNull
	private String jobtitle;
	@NotNull
	@Column(length = 10000)
	private String description;
	
	@NotNull
	@Column(length = 100)
	private String adress;
	@NotNull
	private String cname;
	@NotNull
	private int salary;
	@NotNull
	private String jtype;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	public String image;
	public Long getJobid() {
		return jobid;
	}
	public void setJobid(Long jobid) {
		this.jobid = jobid;
	}
	public String getJobcatagory() {
		return jobcatagory;
	}
	public void setJobcatagory(String jobcatagory) {
		this.jobcatagory = jobcatagory;
	}
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getJtype() {
		return jtype;
	}
	public void setJtype(String jtype) {
		this.jtype = jtype;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Job(Long jobid, String jobcatagory, String jobname, String employer, String jobtitle, String description,
			String adress, String cname, int salary, String jtype, String image) {
		super();
		this.jobid = jobid;
		this.jobcatagory = jobcatagory;
		this.jobname = jobname;
		this.employer = employer;
		this.jobtitle = jobtitle;
		this.description = description;
		this.adress = adress;
		this.cname = cname;
		this.salary = salary;
		this.jtype = jtype;
		this.image = image;
	}
	@Override
	public String toString() {
		return "Job [jobid=" + jobid + ", jobcatagory=" + jobcatagory + ", jobname=" + jobname + ", employer="
				+ employer + ", jobtitle=" + jobtitle + ", description=" + description + ", adress=" + adress
				+ ", cname=" + cname + ", salary=" + salary + ", jtype=" + jtype + ", image=" + image + "]";
	}
	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
