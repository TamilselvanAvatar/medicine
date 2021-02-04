package com.medicine.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.medicine.model.Medicine;

@Repository
public class MedicineDAOImp implements MedicineDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	static final String Fetch = "select * from medicine";

	@Override
	public List<Medicine> fetchDetails() {

		return jdbcTemplate.query(Fetch, new MedicineMapper());
	}

	@Override
	public List<Medicine> insertDetails(Medicine medicine) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Medicine> deleteDetails(Medicine medicine) {
		// TODO Auto-generated method stub
		return null;
	}
}
