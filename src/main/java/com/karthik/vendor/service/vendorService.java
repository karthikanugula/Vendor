package com.karthik.vendor.service;

import java.util.List;

import com.karthik.vendor.entities.Vendor;
import com.karthik.vendor.repos.vendorRepository;

public interface vendorService {
	
	Vendor saveVendor(Vendor vendor);

	Vendor updateVendor(Vendor vendor);

	void deleteVendor(Vendor vendor);

	Vendor getVendorById(int id);

	List<Vendor> getAllVendor();

}
