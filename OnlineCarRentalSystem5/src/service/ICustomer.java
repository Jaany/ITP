package service;

import java.util.ArrayList;

import model.Customer;

public interface ICustomer {
	public void  AddCustomer(Customer customer);
	
	
	public ArrayList<Customer> get_Customer_details();
	
	public void updateCustomer(Customer customer);
	
	
	public void removeCustomer(String NIC);





}
