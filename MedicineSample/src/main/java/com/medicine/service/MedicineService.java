package com.medicine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicine.dao.MedicineDAO;
import com.medicine.model.Medicine;

@Service
public class MedicineService {
	@Autowired
	MedicineDAO medicineDAO;
	
	public List<Medicine> fetch(){
		return medicineDAO.fetchDetails();
	}

}
