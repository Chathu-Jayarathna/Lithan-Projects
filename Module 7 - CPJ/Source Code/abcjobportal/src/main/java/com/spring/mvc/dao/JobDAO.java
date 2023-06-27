package com.spring.mvc.dao;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.spring.mvc.model.Job;

public interface JobDAO {
	public void saveJobsToDB(MultipartFile file, String jobname, String jobtitle, int salary,String adress,String description,String cname,String jtype, String jobcatagory,String employer);
	public Job UpdateJob(Long id) ;

	public List<Job> getAlljobs();
	  public void deleteJobsdById(Long id);
	public void saveJobs(Job jobs);


}
