package com.infotech.controller;

import java.util.List;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dbs.dublinbikes.CallHttpAPIService;
import com.dbs.dublinbikes.Utils;
import com.infotech.dao.DBConnect;
import com.infotech.model.User;
import com.infotech.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	DBConnect dbConnection;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String registerPage(){
		return "register";
	}
	
	@RequestMapping(value="/registerSuccess",method=RequestMethod.POST)
	public String registerSuccess(@RequestParam("station") String lStreetName){
		
		CallHttpAPIService callHttpAPIService=new CallHttpAPIService();
		String sourceLatitude=null;
		String sourceLongitude=null;
		String name=null;
		System.out.println("From UI" + lStreetName);
		JSONArray output=callHttpAPIService.getBikeDeatils(sourceLatitude,sourceLongitude);
		System.out.println("JSON Response from the API is ::()"+output);
		for(int j=0;j<output.length();j++){
			name=output.getJSONObject(j).get("name")+"";
			if(name.equals(lStreetName)){
			 sourceLatitude=output.getJSONObject(j).getJSONObject("position").get("lat")+"";
			 sourceLongitude=output.getJSONObject(j).getJSONObject("position").get("lng")+"";
			 System.out.println("sourceLatitude ::" + sourceLatitude);
			 System.out.println("sourceLongitude ::" + sourceLongitude);
			}
		}
		//deleting records from table before inserting into DB
		dbConnection.deleteDBRecodrs();
		for(int i=0;i<output.length();i++){
				String dname=output.getJSONObject(i).get("name")+"";	
				String number=output.getJSONObject(i).get("number")+"";
				String lat=output.getJSONObject(i).getJSONObject("position").get("lat")+"";
				String lng=output.getJSONObject(i).getJSONObject("position").get("lng")+"";
				String bikeStands=output.getJSONObject(i).get("bike_stands")+"";
				String availableBikestands=output.getJSONObject(i).get("available_bike_stands")+"";
				String availableBikes=output.getJSONObject(i).get("available_bikes")+"";
				double kms=Utils.distance(Double.parseDouble(sourceLatitude),Double.parseDouble(sourceLongitude),Double.parseDouble(lat),Double.parseDouble(lng));
				double meters=Utils.convertToMeter(kms);
				if(meters<=500&&meters!=0){
					dbConnection.insertRecord(number, dname, lat, lng, bikeStands, availableBikestands, availableBikes,meters);
				}				
			}				
		
		return "redirect:/listUsers";
		
	}
	
	@RequestMapping(value="/listUsers",method=RequestMethod.GET)
	public ModelAndView registerSuccess(ModelAndView modelAndView ){
		modelAndView.setViewName("UserList");
		List<User> userList = dbConnection.getStationData();
		System.out.println("size" + userList.size());
		//List<User> userList = userService.getUserList();
		modelAndView.addObject("userList",userList);
		return modelAndView;
	}
	
}
