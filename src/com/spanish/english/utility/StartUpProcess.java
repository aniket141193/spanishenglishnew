package com.spanish.english.utility;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;

import com.spanish.english.form.Admin;
import com.spanish.english.services.AdminServices;

public class StartUpProcess {

	@Autowired
	AdminServices adminServices;

	@PostConstruct
	public void init() {
		Admin admin = adminServices.getAdminById(1);
		if (admin == null) {
			admin = new Admin();
			admin.setAdminPassword("admin123");
			admin.setAdminRole("ROLE_ADMIN");
			admin.setAdminUsername("admin");
			admin.setCountryName("USA");
			admin.setEnabled(true);
			adminServices.addOrUpdateAdmin(admin);
		}
	}
}
