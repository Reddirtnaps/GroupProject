package com.zooworld.Services;

import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooworld.Models.User;
import com.zooworld.Repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
		private UserRepository uRepo;
	
	private User user;
	
	
	public User registerUser(User user) {
		String hash = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hash);
		return this.uRepo.save(user);
	}
	
	public boolean authenticateUser(String email, String password) {
		User user = this.uRepo.findByEmail(email);
		if(user == null) {
			return false;
		}
		return BCrypt.checkpw(password, user.getPassword());
	}
	public User getByEmail(String email) {
		return this.uRepo.findByEmail(email);
	}
	
	public User getSingleUser(Long id) {
		return this.uRepo.findById(id).orElse(null);
	}
	
	public void setCurrentUser(User u) {
		this.user = u;
	}
	
	public User getCurrentUser() {
		return this.user;
	}
	
	
	
	public List<String> getAllUsers(){
		List<User> allUserObjs = this.uRepo.findAll();
		List<String> userCreators = new ArrayList<String>();
		for (int i = 0; i < allUserObjs.size(); i++) {
			String creator = allUserObjs.get(i).getFirstName();
			userCreators.add(creator);
		}
		return userCreators;
	}
	
}
