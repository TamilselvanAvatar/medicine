package com.medicine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.model.Medicine;
import com.medicine.service.MedicineService;

@Controller
public class MedicineController {
	
	@Autowired
	MedicineService medicineService;
	
	@GetMapping(value = "/")
	public ModelAndView view(Model model) {
		
		List<Medicine> medicineList = medicineService.fetch();
		ModelAndView mav = new ModelAndView();
		if(medicineList.isEmpty()) {
			mav.addObject("msg","No record");
		}
		else {
			mav.addObject("medicinelist",medicineList);			
		}
		mav.setViewName("home");
		return mav;
	}

}
