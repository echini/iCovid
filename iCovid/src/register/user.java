package register;


public class user {
	String name;
	String email;
	float lat;
	float lng;
	
	public user() {
		
	}
		
	public user(String name, String email,float lat,float lng) {
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
		
		public float getLat() {
			return lat;
		}
		
		public void setLat(float lat) {
			this.lat=lat;
		}
		
		public float getLng() {
			return lng;
		}
		
		public void setLng(float lng) {
			this.lng=lng;
		}
}