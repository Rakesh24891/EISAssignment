package com.infotech.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.infotech.model.User;

@Repository
public class UserDAO {
private static List<User> list = null;
	static{
		list = new ArrayList<User>();
		list.add(new User("KK", 30, "kk.cs@gmail.com", "India","tets","yyeyey","nayan", 98.00));
		list.add(new User("KK", 30, "kk.cs@gmail.com", "India","tets","yyeyey","nayan", 98.00));
		list.add(new User("KK", 30, "kk.cs@gmail.com", "India","tets","yyeyey","nayan", 98.00));
		list.add(new User("KK", 30, "kk.cs@gmail.com", "India","tets","yyeyey","nayan", 98.00));
		list.add(new User("KK", 30, "kk.cs@gmail.com", "India","tets","yyeyey","nayan", 98.00));
	}
	public List<User> getUserList() {
		return list;
	}
	public void addUser(User user) {
		list.add(user);
	}
}
