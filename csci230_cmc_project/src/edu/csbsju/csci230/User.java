/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.csbsju.csci230;

/**
 *
 * @author irahal
 */
public class User {

	private String  fName;
	private String  lName;
    private String  username;
    private String  password;
    private char 	type;
    private char 	status;

	public User(String fName, String lName, String username, String password, char type, char status) {
		this.fName = fName;
		this.lName = lName;
		this.username = username;
		this.password = password;
		this.type = type;
		this.status = status;
	}


	/**
	 * @return the fName
	 */
	public String getfName() {
		return fName;
	}

	/**
	 * @param fName the fName to set
	 */
	public void setfName(String fName) {
		this.fName = fName;
	}

	/**
	 * @return the lName
	 */
	public String getlName() {
		return lName;
	}

	/**
	 * @param lName the lName to set
	 */
	public void setlName(String lName) {
		this.lName = lName;
	}
	
    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }


	/**
	 * @return the type
	 */
	public char getType() {
		return type;
	}


	/**
	 * @param type the type to set
	 */
	public void setType(char type) {
		this.type = type;
	}


	/**
	 * @return the status
	 */
	public char getStatus() {
		return status;
	}


	/**
	 * @param status the status to set
	 */
	public void setStatus(char status) {
		this.status = status;
	}


	public String getFullName() {
		return getfName() + " " + getlName();
	}

   
    
}
