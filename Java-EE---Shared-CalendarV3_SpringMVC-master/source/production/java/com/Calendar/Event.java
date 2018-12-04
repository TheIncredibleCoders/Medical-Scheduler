package com.Calendar;


import java.util.Date;

public class Event{
    private int patientId;
    private String patientlastname;
    private String patientfirstname;
    private String patientphone;
    private String patientdob;
    private String patientins;
    private String eventName;
    private Date eventDate;
    private String eventDescription;
    private String username;
    private String eventAuthor;
    private String month,day,year;
    private String email;
    private String SSN;

    public  Event(){};
    public Event(int id, String name, Date date, String desc, String uname, String author, 
    		String ptlastname, String ptfirstname, String phone, String ptdob, String ins, String email, String SSN) 
    {
        this.patientId = id;
        this.eventName = name;
        this.eventDate = date;
        this.eventDescription = desc;
        this.username = uname;
        this.eventAuthor = author;
        this.patientlastname = ptlastname;
        this.patientfirstname = ptfirstname;
        this.patientdob = ptdob;
        this.patientins = ins;
        this.patientphone = phone;
        this.email = email;
        this.SSN = SSN;
    }

    public int getId() {
        return patientId;
    }

    public void setId(int id) {
        this.patientId = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }
    
    public String getpatientlastname() {
    	return patientlastname;
    }

public void setpatientlastname(String patientlastname) {
	  this.patientlastname = patientlastname;
}

public String getpatientfirstname() {
	return patientfirstname;
}

 public void setpatientfirstname(String patientfirstname) {
	 this.patientfirstname = patientfirstname;
 }
 public String getpatientdob() {
	 return patientdob;
 }
 
public void setpatientdob(String patientdob) {
	this.patientdob = patientdob;
}
public String getpatientins() {
	return patientins;
}

public void setpatientins(String patientins) {
	this.patientins = patientins;
}
 public String getpatientphone() {
	 return patientphone;
 }
public void setpatientphone(String patientphone) {
	this.patientphone =patientphone;
}
public String getemail() {
	return email;
			
}
public void setemail(String email) {
	this.email = email;
}
 
    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public String getEventDescription() {
        return eventDescription;
    }

    public void setEventDescription(String eventDescription) {
        this.eventDescription = eventDescription;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEventAuthor() {
        return eventAuthor;
    }

    public void setEventAuthor(String eventAuthor) {
        this.eventAuthor = eventAuthor;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }
    public String getSSN() {
    	return SSN;
    }
    public void setSSN(String SSN) {
    	this.SSN = SSN;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) { this.year = year;  }


}
