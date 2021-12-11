package com.karthik.vendor.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.karthik.vendor.entities.Vendor;

public interface vendorRepository extends JpaRepository<Vendor, Integer> {

}
