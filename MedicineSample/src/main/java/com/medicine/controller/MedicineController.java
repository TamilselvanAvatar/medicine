package com.medicine.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.model.Medicine;
import com.medicine.service.MedicineService;

@Controller

public class MedicineController {
	
	@Autowired
	MedicineService medicineService;
	List<Medicine> medicineList;
	
	@RequestMapping("/")
	public String view(@ModelAttribute("medicine") Medicine medicine) {
		return "home";
	}
	
	@GetMapping(value = "/fetch")
	public String view(@ModelAttribute("medicine") Medicine medicine,HttpSession model) {
		
		medicineList = medicineService.fetch();
		if(medicineList.isEmpty()) {
			model.setAttribute("msg","No record");
		}
		else {
			model.setAttribute("medicinelist",medicineList);			
		}
		return "redirect:/#tb2";
	}
	
	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("medicine") Medicine medicine,HttpSession model) {
		
		if(medicineService.insert(medicine)) {
			model.setAttribute("msg" , "Success");
		}
		else {
			model.setAttribute("msg" , "Fail to insert");
		}
		
		return "redirect:/#tb1";
		
	}
	@RequestMapping(value = "/delete")
	public String delete(@ModelAttribute("medicine") Medicine medicine, @RequestParam("date") String date,HttpSession model) {
		
		if(medicineService.delete(date)) {
			model.setAttribute("msgD" , "Success");
		}
		else {
			model.setAttribute("msgD" , "Fail to Delete");
		}
		
		return "redirect:/#tb3";
		
	}

}
