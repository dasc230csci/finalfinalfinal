/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csbsju.csci230;

import java.util.ArrayList;

import dblibrary.project.csci230.*;

/**
 *
 * @author irahal
 */
public class UserController {

	private User currentUser;
	private boolean loggedIn = false;
	private UniversityDBLibrary userDBLibrary = new UniversityDBLibrary("dasc", "dasc", "csci230");

	/**
	 * returns 0 for successful login returns -1 if username is not valid
	 * returns -2 if password is not valid returns -3 if database access was not
	 * successful
	 */
	public int login(String username, String password) {
		int status = -3;
		try {
			String[][] userRecords = userDBLibrary.user_getUsers();
			for (int i = 0; i < userRecords.length; i++) {
				status = -1;
				if (userRecords[i][2].equals(username)) {
					if (userRecords[i][3].equals(password)) {
						status = 0;
						this.setCurrentUser(new User(userRecords[i][0], userRecords[i][1], userRecords[i][2],
								userRecords[i][3], userRecords[i][4].charAt(0), userRecords[i][5].charAt(0)));
						this.setLoggedIn(true);
					} else {
						status = -2;
					}
					break;
				}
			}
			return status;
		} catch (Exception e) {
			return status;
		}
	}

	public void logout() {
		this.setLoggedIn(false);
	}

	/**
	 * @return the loggedIn
	 */
	public boolean isLoggedIn() {
		return loggedIn;
	}

	/**
	 * @param loggedIn
	 *            the loggedIn to set
	 */
	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}

	public void addUser(User user) {
		try {
			userDBLibrary.user_addUser(user.getfName(),user.getlName(), user.getUsername(), user.getPassword(), user.getType());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void editUser(User user) {
		try {
			userDBLibrary.user_editUser(user.getUsername(), user.getfName(),user.getlName(),  user.getPassword(), user.getType(), user.getStatus());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(User user) {
		try {
			userDBLibrary.user_deleteUser(user.getUsername());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the currentUser
	 */
	public User getCurrentUser() {
		return currentUser;
	}

	/**
	 * @param currentUser
	 *            the currentUser to set
	 */
	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}

	public ArrayList<User> getAllUsers() {
		try {
			String[][] userRecords = userDBLibrary.user_getUsers();
			ArrayList<User> users = new ArrayList<User>();
			for (int i = 0; i < userRecords.length; i++) {
				users.add(new User(	userRecords[i][0], userRecords[i][1], userRecords[i][2],
									userRecords[i][3], userRecords[i][4].charAt(0), userRecords[i][5].charAt(0)));
			}
			return users;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public User getSpecificUser(String username) {
		User user = null;
		try {
			String[][] userRecords = userDBLibrary.user_getUsers();
			for (int i = 0; i < userRecords.length; i++) {
				if (userRecords[i][2].equals(username)) {
					user = new User(userRecords[i][0], userRecords[i][1], userRecords[i][2],
									userRecords[i][3], userRecords[i][4].charAt(0), userRecords[i][5].charAt(0));
				}
			}
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return user;
		}
	}

	public static void main(String[] args) {
		try {
			UserController uc = new UserController();
			ArrayList<User> users = uc.getAllUsers();
			for (User user : users) {
				System.out.println(user.getFullName());
			}
			System.out.println("************************* ADD: *************************");
			uc.addUser(new User("Bill", "Ding", "bill", "ding", 'a', 'Y'));
			users = uc.getAllUsers();
			for (User user : users) {
				System.out.println(user.getFullName());
			}
			System.out.println("************************* EDIT: *************************");
			uc.editUser(new User( "Billy", "Dingo",  "bill", "dingo", 'u', 'N'));
			users = uc.getAllUsers();
			for (User user : users) {
				System.out.println(user.getFullName());
			}
			System.out.println("************************* DELETE: *************************");
			uc.deleteUser(uc.getSpecificUser("bill"));
			users = uc.getAllUsers();
			for (User user : users) {
				System.out.println(user.getFullName());
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
