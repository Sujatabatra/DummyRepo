package com.sujata.model;

public class LoginDaoImpl implements LoginDao {

	@Override
	public boolean check(User user) {
		
		return user.getUsername().equals(user.getPassword());
		
	}

}
