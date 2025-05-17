package com.example.action;

import com.example.dao.UserDao;
import com.example.model.User;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class UserAction extends ActionSupport {

    private static final long serialVersionUID = 1L;

    private User user;  
    private String oldName; 
    private Integer id;
    private List<User> users;        

    private static final UserDao userDao = new UserDao(); 

    // Add user
    public String add() {
        if (user != null && user.getName() != null && !user.getName().isEmpty()) {
            userDao.addUser(user);
        }
        return SUCCESS;
    }

    // List all users
    public String list() {
        users = userDao.getAllUsers();
        return SUCCESS;
    }
    
    // Show form with user data for editing
    public String edit() {
        if (id != null) {
            this.user = userDao.getUserById(id);
        }
        return "edit";
    }

    // Update user
    public String update() {
    	 if (user != null && user.getId() != null) {
             User existingUser = userDao.getUserById(user.getId());
             if (existingUser != null) {
                 existingUser.setName(user.getName());
                 existingUser.setEmail(user.getEmail());
                 userDao.updateUser(existingUser);
             }
         }
    	    return SUCCESS;
    }

    // Delete user
    public String delete() {
        if (user != null && user.getId() != null) {
            userDao.deleteUser(user.getId());
        }
        return SUCCESS;
    }

    // Getters and setters (used by Struts2)

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getOldName() {
        return oldName;
    }

    public void setOldName(String oldName) {
        this.oldName = oldName;
    }

    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
