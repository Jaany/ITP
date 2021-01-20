package model;


	public class Inquiry {
		
		private int InquiryID;
		private String Name;
		private String Booking;
		private String Email;
		private String Problem;
		private String Comment;
		
		
		public int getInquiryID() {
			return InquiryID;
		}
		public void setInquiryID(int inquiryID) {
			InquiryID = inquiryID;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public String getBooking() {
			return Booking;
		}
		public void setBooking(String booking) {
			Booking = booking;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public String getProblem() {
			return Problem;
		}
		public void setProblem(String problem) {
			Problem = problem;
		}
		public String getComment() {
			return Comment;
		}
		public void setComment(String comment) {
			Comment = comment;
		}
		@Override
		public String toString() {
			return "Inquiry [InquiryID=" + InquiryID + ", Name=" + Name + ", Booking=" + Booking + ", Email=" + Email
					+ ", Problem=" + Problem + ", Comment=" + Comment + "]";
		}
		
		
		
		
		
	}	