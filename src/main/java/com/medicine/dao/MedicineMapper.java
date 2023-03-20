package com.medicine.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.medicine.model.Medicine;



public class MedicineMapper implements RowMapper<Medicine> {

	@Override
	public Medicine mapRow(ResultSet rs, int rowNum) throws SQLException {
		Medicine m = new Medicine();
		m.setName(rs.getString(2));
		m.setManufactureDate(rs.getString(3));
		m.setExpDate(rs.getString(4));
		m.setUse(rs.getString(5));
		return m;
	}

}
