package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.WearStyleBackend.dao.SupplierDao;
import com.niit.WearStyleBackend.models.Supplier;

@Controller 
public class SupplierController 
{ 
	@Autowired
	SupplierDao supplierDAO;
	
	
	 @RequestMapping(value="/admin/AddSupplier",method=RequestMethod.POST)
	   public String addSupplier(@RequestParam("splrName") String splrName,@RequestParam("splrAdd") String splrAddress,Model m)
	   {
		 Supplier supplier=new Supplier();
		 supplier.setSplrName(splrName);
		 supplier.setSplrAddress(splrAddress);
	    
		 supplierDAO.addSupplier(supplier);
	         
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("SupplierList",listSupplier);
	        m.addAttribute("status", "Supplier added successfully...");
	        return "redirect:/admin/supplier";
	   }
	 @RequestMapping(value="/admin/supplier",method=RequestMethod.GET)
     public String showSupplier(@RequestParam("status")String status,Model m)
     {
         Supplier supplier=new Supplier();
         m.addAttribute(supplier);
          
         List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
         m.addAttribute("supplierList",listSupplier);
         m.addAttribute("status", status);
         return "Supplier";
     }
	 
	 @RequestMapping(value="admin/deleteSupplier/{splrId}",method=RequestMethod.GET)
	    public String deleteSupplier(@PathVariable("splrId")int splrId,Model m)
	    {
		 Supplier supplier=supplierDAO.getSupplier(splrId);
		 try
		 {
		 supplierDAO.deleteSupplier(supplier);
		 m.addAttribute("status", "Supplier Deleted Successfully...");
		 }
		 catch(Exception e)
		 {
			 m.addAttribute("status", "You cant delete this supplier some product already under this supplier...");
		 }
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	         
	        Supplier supplier1=new Supplier();
	        m.addAttribute(supplier1);
	         
	        return "redirect:/admin/supplier";
	    }
	 @RequestMapping(value="admin/updateS",method=RequestMethod.GET)
	    public String updateCategory(@RequestParam("splrId") int splrId,Model m)
	    {
		 Supplier supplier=supplierDAO.getSupplier(splrId);
	        m.addAttribute("sup",supplier);
	         
	        List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",listSupplier);
	        return "UpdateSupplier";
	    }
	   
	   @RequestMapping(value="/admin/updateSupplier",method=RequestMethod.POST)
	    public String updateNewSup(@RequestParam("splrId") int splrId,@RequestParam("splrName") String splrName,@RequestParam("splrAdd") String splrAddress,Model m)
	    {
		   Supplier supplier=supplierDAO.getSupplier(splrId);
		   supplier.setSplrName(splrName);
		   supplier.setSplrAddress(splrAddress);
	         
		   supplierDAO.updateSupplier(supplier);
	         
	        List<Supplier> supplierList=supplierDAO.retrieveSupplier();
	        m.addAttribute("supplierList",supplierList);
	        m.addAttribute("status", "Supplier Upadated Successfully...");
	         
	        return "redirect:/admin/supplier";
	    }
	     
	
	

}
