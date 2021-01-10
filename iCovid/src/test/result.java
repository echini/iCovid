package test;

public class result {
	String	age;
	String  temp;
	String	drycough;
	String	breathing;
	String	smelltaste;
	String	exhausted;
	String	question8;
	String	confirmedcase;
	String	vulnerability;
	
	
public result() {
		
	}
		
	public result(String age, String temp,String drycough,String breathing,String smelltaste,String exhausted,String question8,String confirmedcase,String vulnerability) {
		this.age=age;
		this.temp=temp;
		this.drycough=drycough;
		this.breathing=breathing;
		this.smelltaste=smelltaste;
		this.exhausted=exhausted;
		this.question8=question8;
		this.confirmedcase=confirmedcase;
		this.vulnerability=vulnerability;
		
	}
	
		
		public String getAge() {
			return age;
		}
		
		public void setAge(String age) {
			this.age=age;	
		}
		
		public String getTemp() {
			return temp;
		}
		
		public void setTemp(String temp) {
			this.temp=temp;
		}
		
		public String getDrycough() {
			return drycough;
		}
		
		public void setDrycough(String drycough) {
			this.drycough=drycough;
		}
		
		public String getBreathing() {
			return breathing;
		}
		
		public void setBreathing(String breathing) {
			this.breathing=breathing;
		}
		
		public String getSmelltaste() {
			return smelltaste;
		}
		
		public void setSmelltaste(String smelltaste) {
			this.smelltaste=smelltaste;
		}
		
		public String getExhausted() {
			return exhausted;
		}
		
		public void setExausted(String exhausted) {
			this.exhausted=exhausted;
		}
		public String getQuestion8() {
			return question8;
		}
		
		public void setQuestion8(String question8) {
			this.question8=question8;
		}
		
		public String getConfirmedcase() {
			return confirmedcase;
		}
		
		public void setConfirmedcase(String confirmedcase) {
			this.confirmedcase=confirmedcase;
		}
		public String getVulnerability() {
			return vulnerability;
		}
		
		public void setVulnerability(String vulnerability) {
			this.vulnerability=vulnerability;
		}
		
}