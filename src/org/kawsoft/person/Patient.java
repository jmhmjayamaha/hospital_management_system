package org.kawsoft.person;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "patient_details")
@PrimaryKeyJoinColumn(name="ID")
public class Patient extends Person{
	
	private String patientId;
	private int age;
	private String acceptDate;
	private String sickness;
	private String prescription;
	
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAcceptDate() {
		return acceptDate;
	}
	public void setAcceptDate(String acceptDate) {
		this.acceptDate = acceptDate;
	}
	public String getSickness() {
		return sickness;
	}
	public void setSickness(String sickness) {
		this.sickness = sickness;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

}
