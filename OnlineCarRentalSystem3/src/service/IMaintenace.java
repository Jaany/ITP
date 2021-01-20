package service;

import java.util.ArrayList;

import model.RepairAndMaintenance;

public interface IMaintenace {
public void AddMaintenanceDetails(RepairAndMaintenance repairandmaintenance);
	
	public ArrayList<RepairAndMaintenance> get_RepairAndMaintenance();
	
	public void UpdateMaintenanceDetails(RepairAndMaintenance repairandmaintenance);
	
	public void RemoveMaintenanceDetails(String VehicleID);

}
