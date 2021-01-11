package register;


public class user {
	String name;
	String email;
	String lat;
	String lng;
	
	public user() {
		
	}
		
	public user(String name, String email,String lat,String lng) {
		this.name=name;
		this.email=email;
		this.lat=lat;
		this.lng=lng;
	}
	
		
		public String getName() {
			return name;
		}
		
		public void setName(String name) {
			this.name=name;
		}
		
		public String getEmail() {
			return email;
		}
		
		public void setEmail(String email) {
			this.email=email;
		}
		
		public String getLat() {
			return lat;
		}
		
		public void setLat(String lat) {
			this.lat=lat;
		}
		
		public String getLng() {
			return lng;
		}
		
		public void setLng(String lng) {
			this.lng=lng;
		}
}