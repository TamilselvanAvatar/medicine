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
	public String viewFetch(@ModelAttribute("medicine") Medicine medicine, HttpSession session, Model model) {

		medicineList = medicineService.fetch();

		session.setAttribute("medicinelist", medicineList);

		return "redirect:/";
	}

	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("medicine") Medicine medicine, Model model) {

		if (medicineService.insert(medicine)) {
			model.addAttribute("msg", "Success");
		} else {
			model.addAttribute("msg", "Fail to insert");
		}

		return "home";

	}

	@RequestMapping(value = "/delete")
	public String delete(@ModelAttribute("medicine") Medicine medicine, @RequestParam("date") String date,
			Model model) {

		if (medicineService.delete(date)) {
			model.addAttribute("msgD", "Success");
		} else {
			model.addAttribute("msgD", "Fail to Delete");
		}

		return "home";

	}

}
