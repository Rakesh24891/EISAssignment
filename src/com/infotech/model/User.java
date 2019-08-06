package com.infotech.model;

public class User {

	
	
	private String name;
	private int stationNumber;
	private String latitude;
	private String longitude;
	private String bikeStands;
	private String availableStands;
	private String availableBikes;
	private Double distance;
	
	
	public User(String name, int stationNumber, String latitude, String longitude, String bikeStands,
			String availableStands, String availableBikes, Double distance) {
		super();
		this.name = name;
		this.stationNumber = stationNumber;
		this.latitude = latitude;
		this.longitude = longitude;
		this.bikeStands = bikeStands;
		this.availableStands = availableStands;
		this.availableBikes = availableBikes;
		this.distance = distance;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getStationNumber() {
		return stationNumber;
	}


	public void setStationNumber(int stationNumber) {
		this.stationNumber = stationNumber;
	}


	public String getLatitude() {
		return latitude;
	}


	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}


	public String getLongitude() {
		return longitude;
	}


	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}


	public String getBikeStands() {
		return bikeStands;
	}


	public void setBikeStands(String bikeStands) {
		this.bikeStands = bikeStands;
	}


	public String getAvailableStands() {
		return availableStands;
	}


	public void setAvailableStands(String availableStands) {
		this.availableStands = availableStands;
	}


	public String getAvailableBikes() {
		return availableBikes;
	}


	public void setAvailableBikes(String availableBikes) {
		this.availableBikes = availableBikes;
	}


	public Double getDistance() {
		return distance;
	}


	public void setDistance(Double distance) {
		this.distance = distance;
	}
	
	
	
	
}
