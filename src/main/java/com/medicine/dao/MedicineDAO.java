package com.medicine.dao;

import java.util.List;

import com.medicine.model.Medicine;

public interface MedicineDAO {
	
	int  insertDetails(Medicine medicine); 
	int  deleteDetails(String date); 
	List<Medicine>  fetchDetails();
}
