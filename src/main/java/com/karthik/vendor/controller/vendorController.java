package com.karthik.vendor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.karthik.vendor.entities.Vendor;
import com.karthik.vendor.service.vendorService;
import com.karthik.vendor.service.vendorServiceIMPL;

@Controller
public class vendorController {
	
	@Autowired
	vendorServiceIMPL services;
	
	@RequestMapping("/show")
	public String showVendor() {
		return "createVendor";
	}
	
	
	  @RequestMapping("/saveVendor") 
	  public String addVendor(@ModelAttribute("vendor") Vendor vendor, ModelMap modelmap) {
	  Vendor vendorsave = services.saveVendor(vendor); 
	  String str = "Vendor" + vendorsave.getName() + "Successfully Saved"; 
	  modelmap.addAttribute("str",
	  str);
	  return "createVendor"; }
	  
	  @RequestMapping("/displayVendor")
	  public String displayVendors(@ModelAttribute("vendor") Vendor vendor, ModelMap modelmap) {
		  List<Vendor> vendorDisplay = services.getAllVendor();
		  modelmap.addAttribute("vendorDisplay", vendorDisplay);
		  return "displayVendor";
	  }
	  
	  @RequestMapping("/deleteVendor")
	  public String deleteVendors(@RequestParam("id") int id) {
		  Vendor VendorId = services.getVendorById(id);
		  services.deleteVendor(VendorId);
		  return "displayVendor";
	  }
	  
	 @RequestMapping("/editVendors")
	  public String editVendor(@RequestParam("id") int id, ModelMap modelmap) {
		  Vendor vendorid =services.getVendorById(id);
		  modelmap.addAttribute("vendorid", vendorid);
		  return "updateVendor";
		  
	  }
	 @RequestMapping("/updateVendor")
	 public String updateVendors(@ModelAttribute("vendor") Vendor vendor, ModelMap modelmap) {
		 services.updateVendor(vendor);
		  List<Vendor> vendorDisplay = services.getAllVendor();
		  modelmap.addAttribute("vendorDisplay", vendorDisplay);
		  return "displayVendor";
	 }
	 

}
