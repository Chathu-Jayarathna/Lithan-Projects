package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.dao.JobDAO;
import com.spring.mvc.model.Job;

@Controller
public class JobController {

	@Autowired
	private JobDAO jobDAO;

	@GetMapping(value = "/postjob")
	public ModelAndView modelAndView(Model model) {
		Job job = new Job();
		model.addAttribute(job);
		System.out.println(job);
		ModelAndView modelAndView = new ModelAndView("postjob");
		return modelAndView;

	}

	@PostMapping(value = "/postjob")
	public String saveJob(@RequestParam("image") MultipartFile file, @RequestParam("jobcatagory") String jobcatagory,
			@RequestParam("jobname") String jobname, @RequestParam("employer") String employer,
			@RequestParam("jobtitle") String jobtitle, @RequestParam("description") String description,
			@RequestParam("adress") String adress, @RequestParam("cname") String cname,
			@RequestParam("salary") int salary, @RequestParam("jtype") String jtype) {
		try {

			jobDAO.saveJobsToDB(file, jobname, jobtitle, salary, adress, description, cname, jtype,jobcatagory, employer);
		return "redirect:/jobcat1";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "postjob";

	}

	@RequestMapping("/jobcat1")
	public String showExampleView(Model model) {
		List<Job> jobs = jobDAO.getAlljobs();
		model.addAttribute("jobs", jobs);
		return "/jobcat1";
	}
	
	
	
	
	
	
	
//	@GetMapping("/deletejob/{jobid}")
//	public String deletejob(@PathVariable("jobid") Long jobid) {
//		return "redirect:/jobcat1";
//
//	}
//
//	@RequestMapping("/updateJob/{jobId}")
//	public String updateJob(@PathVariable("jobId") Long jobid, Model model) {
//		Job job = new Job();
//		model.addAttribute(job);
//		return "updateJob";
//
//	}
//	@RequestMapping(value="/updateJobs", method = RequestMethod.POST)
//	public String resetJob(@ModelAttribute Job jobs) {
//		
//			 System.out.println(jobs);
//			 jobDAO.saveJobs(jobs); 
//			   
//			  return "editJobSuccess";
//		} 
//	
//	@RequestMapping("/jobDetails/{jobId}")
//	public String profile(@PathVariable("jobId") Long Id, Model model) {
//		Job job=  this.jobDAO.UpdateJob(Id);
//		model.addAttribute("job", job);
//		return "jobDetails";
//	}

}
