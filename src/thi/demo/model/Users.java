package thi.demo.model;

public class Users {
    private String username, password,firstname,lastname;
    private int id;
    

	public Users(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Users() {
	}
	public Users(int id)
	{	
	}
	public Users( int id,String firstname, String lastname, String username, String password) {
		super();
		this.username = username;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.id = id;
	}

	public Users( String firstname, String lastname,String username, String password) {
		super();
		this.username = username;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    
}
