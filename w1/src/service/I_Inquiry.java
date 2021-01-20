package service;

import java.util.ArrayList;

import model.Inquiry;

public interface I_Inquiry {
	public void  AddInquiry(Inquiry inquiry);
	
	
	public ArrayList<Inquiry> get_Inquiry_details();
	

}
