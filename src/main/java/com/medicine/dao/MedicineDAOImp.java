package com.medicine.dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.medicine.model.Medicine;

@Repository
public class MedicineDAOImp implements MedicineDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	LocalDateTime now = LocalDateTime.now();
	String sysdate = dtf.format(now);
	
	static final String Insert = "insert into medicine (name,man_date,exp_date,uses) values(?,?,?,?)";
	static final String Fetch = "select * from medicine where exp_date <= ?";
	static final String Delete = "delete from medicine where exp_date = ?";

	@Override
	public List<Medicine> fetchDetails() {

		return jdbcTemplate.query(Fetch, new MedicineMapper(),sysdate);
	}

	@Override
	public int insertDetails(Medicine medicine) {
		
		return jdbcTemplate.update(Insert,medicine.getName(),medicine.getManufactureDate(),medicine.getExpDate(),medicine.getUse());
	}


	@Override
	public int deleteDetails(String date) {
		
		return  jdbcTemplate.update(Delete , date);
	}
}
