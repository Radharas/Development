package in.co.air.line.ticket.bean;

public class ContactBean {

	private int contactUserId;
	private String userName;
	private String mobileNumber;
	private String userEmail;
	private String userCountry;
	private String userQuery;

	public ContactBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ContactBean(String userName, String mobileNumber, String userEmail, String userCountry, String userQuery) {
		super();
		this.userName = userName;
		this.mobileNumber = mobileNumber;
		this.userEmail = userEmail;
		this.userCountry = userCountry;
		this.userQuery = userQuery;
	}

	public ContactBean(int contactUserId, String userName, String mobileNumber, String userEmail, String userCountry,
			String userQuery) {
		super();
		this.contactUserId = contactUserId;
		this.userName = userName;
		this.mobileNumber = mobileNumber;
		this.userEmail = userEmail;
		this.userCountry = userCountry;
		this.userQuery = userQuery;
	}

	public int getContactUserId() {
		return contactUserId;
	}

	public void setContactUserId(int contactUserId) {
		this.contactUserId = contactUserId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserCountry() {
		return userCountry;
	}

	public void setUserCountry(String userCountry) {
		this.userCountry = userCountry;
	}

	public String getUserQuery() {
		return userQuery;
	}

	public void setUserQuery(String userQuery) {
		this.userQuery = userQuery;
	}

	@Override
	public String toString() {
		return "ContactBean [contactUserId=" + contactUserId + ", userName=" + userName + ", mobileNumber="
				+ mobileNumber + ", userEmail=" + userEmail + ", userCountry=" + userCountry + ", userQuery="
				+ userQuery + "]";
	}

}
