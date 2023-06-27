package com.spring.mvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;


import com.spring.mvc.model.Job;
@Repository
@Transactional
public class JobDAOImpl implements JobDAO {
@Autowired
private HibernateTemplate hibernateTemplate;
@Transactional
	public void saveJobsToDB(MultipartFile file, String jobname, String jobtitle, int salary,String adress,String description,String cname,String jtype,String jobcatagory,String employer) {
	
	Job job=new Job();
	String fileName=StringUtils.cleanPath(file.getOriginalFilename());
	if(fileName.contains(".")) {
		System.out.println("not a valid file");
		job.setJobname(jobname);
		job.setAdress(adress);
		job.setCname(cname);
		job.setDescription(description);
		job.setEmployer(employer);
		job.setImage(fileName);
		job.setJobcatagory(jobcatagory);
		job.setJobtitle(jobtitle);
		job.setSalary(salary);
		job.setJtype(jtype);
	
		
		this.hibernateTemplate.saveOrUpdate(job);
	
	}
	}
@Transactional
	public Job UpdateJob(Long id) {
	
		return this.hibernateTemplate.get(Job.class, id);
	}

	public List<Job> getAlljobs() {
		List<Job>jobs=this.hibernateTemplate.loadAll(Job.class);
		
		return jobs;
	}
@Transactional
	public void deleteJobsdById(Long id) {
		Job job=(Job) this.hibernateTemplate.loadAll(Job.class);
		this.hibernateTemplate.delete(job);
		
	}
@Transactional
	public void saveJobs(Job jobs) {
	this.hibernateTemplate.saveOrUpdate(jobs);	
		
	}

	

	
	

}
