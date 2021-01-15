package register;


public class user {
	String name;
	String email;
	float lat;
	float lng;
	float res;
	
	public user() {
		
	}
		
	public user(String name, String email,float lat,float lng,float res) {
		this.name=name;
		this.email=email;
		this.lat=lat;
		this.lng=lng;
		this.res=res;
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
		
		public float getRes() {
			return res;
		}
		
		public void setResult(float res) {
			this.res=res;
		}
}