package vo;

public class Board {
	String name;
	String proname;
	String year;
	String season;
	String grade;
	String textname;
	String hakjum;
	String text;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getTextname() {
		return textname;
	}
	public void setTextname(String textname) {
		this.textname = textname;
	}
	public String getHakjum() {
		return hakjum;
	}
	public void setHakjum(String hakjum) {
		this.hakjum = hakjum;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Board(String name, String proname, String year, String season, String grade, String textname, String hakjum,
			String text) {
		super();
		this.name = name;
		this.proname = proname;
		this.year = year;
		this.season = season;
		this.grade = grade;
		this.textname = textname;
		this.hakjum = hakjum;
		this.text = text;
	}
	

}
