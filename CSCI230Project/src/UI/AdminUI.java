/**
 * File: AdminUI.java
 */
package UI;
import java.util.ArrayList;
import Controller.AdminFuncController;
import Controller.LoginController;
import Entity.*;

/**
 * Class to represent the Admin UI.
 * 
 * @author  Daniel M. Song, Anh B. Tran, Caitlin E. Harvey, Samuel J. Halloran
 * @version March 27, 2017
 */
public class AdminUI {
	
	/**
	 * AdminFuncController which provide
	 * functionality of admin
	 */
	private AdminFuncController adminFuncController;
	
	/**
	  * Allows functionality of logout.
	  */
	 private LoginController loginController;
	
	/**
	 * username of the user
	 */
	private String username;
	
	/**
	 * information of the Admin
	 */
	private Account admin;
	
	/**
	 * Default constructor. Initialize username and adminFuncController
	 * @param username of the user
	 */
	public AdminUI(String username) {
		this.username = username;
		this.adminFuncController = new AdminFuncController();
		admin = adminFuncController.getProfile(username);
		admin.setLoggedIn(true);
		this.loginController = new LoginController();
	}

	/**
	 * View a list of all users.
	 * @return ArrayList<String> list of all users
	 */
	public ArrayList<Account> viewAllUser() {
		return adminFuncController.viewAllUser();
	}
	
	/**
	 * Deactivate a specific user.
	 * @return true if successfully deactivate user
	 */
	public boolean deactivateUser(String username) {
		return adminFuncController.deactivateUser(username);
	}
	
	/**
	 * Add new university.
	 * 
	 * @return true if successfully add new university
	 */
	public boolean addUniversity(ArrayList<String> schoolInfo){
		   if(adminFuncController.addUniversity(schoolInfo)){
			   return true;
		   }
		   return false;
	}
	
	/**
	 * Edit university information
	 * 
	 * @return true if successfully edit university
	 */
	public boolean editUniversity(ArrayList<String> schoolInfo){
		   if(adminFuncController.editUniversityInDetailed(schoolInfo)){
			   return true;
		   }
		   return false;
	}
	
	
	/**
	 * Create a new user.
	 * @return true if successfully create new user
	 */
	public int createUser(String firstName, String lastName, String userName, String password, String type, String status) {
		return adminFuncController.createUser(firstName, lastName, userName, password, type, status);
		
	}
	
	/**
	 * Edit an existing user information 
	 * @return true if successfully edit profile
	 */
	public int editUserProfile(String firstName, String lastName, String userName, String password, String type, String status) {
		return adminFuncController.editUserProfile(firstName, lastName, userName, password, type, status);
	}
	
	/**
	 * View user's information
	 * obtain account information from database
	 * @return Account which contains information of the user
	 */
	public Account viewProfile(){
		this.admin = adminFuncController.getProfile(username);
		admin.setLoggedIn(true);
		return admin;
	}
	
	/**
	 * View other user's information
	 * obtain account information from database
	 * @return Account which contains information of the user
	 */
	public Account viewOthersProfile(String username){
		Account account = adminFuncController.getProfile(username);
		return account;
	}
	
	/**
	 * View all universities that exist in database
	 * @return ArrayList<University> list of all universities
	 */
	public ArrayList<University> viewUniversityList(){
		return adminFuncController.getUniversityList();
	}
	
	/**
	   * Logs User out of CMC system
	   * returns true if user is successfully logged out
	   * 
	   * @param userName username of user to logoff
	   * @return boolean to determine if user is logged out
	   */
	  public boolean logOff(){
	 	 return this.loginController.logOff(admin);
	  }
	  
	  /**
	   * Method that reactivate user
	   * @param username name of the user want to reactivate
	   * @return true if successfully removed
	   */
	  public boolean reactivateAccount(String username){
		  return adminFuncController.reactivateAccount(username);
	  }
	  
	  /**
		 * Delete University
		 * @param name of the school
		 * @return true if successfully delete University
		 */
		public boolean deleteUniversity(String name){
			return adminFuncController.deleteUniversity(name);
		}
		
		/**
		   * Delete User
		   * @param username username of the user
		   * @return true if successfully deleted
		   */
		  public boolean deleteUser(String username){
			  return adminFuncController.deleteUser(username);
		  }
}