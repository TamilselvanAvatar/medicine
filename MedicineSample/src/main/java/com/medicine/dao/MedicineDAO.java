package com.medicine.dao;

import java.util.List;

import com.medicine.model.Medicine;

public interface MedicineDAO {
	
	List<Medicine>  insertDetails(Medicine medicine); 
	List<Medicine>  deleteDetails(Medicine medicine); 
	List<Medicine>  fetchDetails();
}
