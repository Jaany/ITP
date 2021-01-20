package model;

public class RepairAndMaintenance {
	private int RepairID;
	private String VehicleID;
	private String Start_Date;
	private String End_Date;
	private String Description;
	private String Maintenance_Cost;
	public String getVehicleID() {
		return VehicleID;
	}
	public void setVehicleID(String vehicleID) {
		VehicleID = vehicleID;
	}

	public int getRepairID() {
		return RepairID;
	}
	public void setRepairID(int repairID) {
		RepairID = repairID;
	}
	public String getStart_Date() {
		return Start_Date;
	}
	public void setStart_Date(String start_Date) {
		Start_Date = start_Date;
	}
	public String getEnd_Date() {
		return End_Date;
	}
	public void setEnd_Date(String end_Date) {
		End_Date = end_Date;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getMaintenance_Cost() {
		return Maintenance_Cost;
	}
	public void setMaintenance_Cost(String maintenance_Cost) {
		Maintenance_Cost = maintenance_Cost;
	}
	@Override
	public String toString() {
		return "RepairAndMaintenance [RepairID=" + RepairID + ", VehicleID=" + VehicleID + ", Start_Date=" + Start_Date
				+ ", End_Date=" + End_Date + ", Description=" + Description + ", Maintenance_Cost=" + Maintenance_Cost
				+ "]";
	}
	
	
	
	
}