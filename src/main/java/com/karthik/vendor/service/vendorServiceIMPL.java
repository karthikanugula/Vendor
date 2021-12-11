package com.karthik.vendor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.karthik.vendor.entities.Vendor;
import com.karthik.vendor.repos.vendorRepository;

@Service
public class vendorServiceIMPL implements vendorService {

	@Autowired
	private vendorRepository Repo;
	
	@Override
	public Vendor saveVendor(Vendor ven) {
		// TODO Auto-generated method stub
		return Repo.save(ven);
	}

	@Override
	public Vendor updateVendor(Vendor ven) {
		// TODO Auto-generated method stub
		return Repo.save(ven);
	}

	@Override
	public void deleteVendor(Vendor ven) {
		// TODO Auto-generated method stub

	}

	@Override
	public Vendor getVendorById(int id) {
		// TODO Auto-generated method stub
		return Repo.findById(id).get();
	}

	@Override
	public List<Vendor> getAllVendor() {
		// TODO Auto-generated method stub
		return Repo.findAll();
	}

}
