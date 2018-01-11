package cycle.dto;

public class LoginDTO {

	private String loginAddress;

	private String loginPassword;

	private String userName;

    private String gender;

	private String birthday;

	private boolean loginFlg = false;

	/**
	 * loginAddressを取得します。
	 * @return loginAddress
	 */
	public String getLoginAddress() {
		return loginAddress;
	}

	/**
	 * loginAddressを設定します。
	 * @param loginAddress loginAddress
	 */
	public void setLoginAddress(String loginAddress) {
		this.loginAddress = loginAddress;
	}

	/**
	 * loginPasswordを取得します。
	 * @return loginPassword
	 */
	public String getLoginPassword() {
		return loginPassword;
	}

	/**
	 * loginPasswordを設定します。
	 * @param loginPassword loginPassword
	 */
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	/**
	 * userNameを取得します。
	 * @return userName
	 */
	public String getUserName() {
	    return userName;
	}

	/**
	 * userNameを設定します。
	 * @param userName userName
	 */
	public void setUserName(String userName) {
	    this.userName = userName;
	}

	/**
	 * genderを取得します。
	 * @return gender
	 */
	public String getGender() {
	    return gender;
	}

	/**
	 * genderを設定します。
	 * @param gender gender
	 */
	public void setGender(String gender) {
	    this.gender = gender;
	}

	/**
	 * birthdayを取得します。
	 * @return birthday
	 */
	public String getBirthday() {
	    return birthday;
	}

	/**
	 * birthdayを設定します。
	 * @param birthday birthday
	 */
	public void setBirthday(String birthday) {
	    this.birthday = birthday;
	}

	/**
	 * loginFlgを取得します。
	 * @return loginFlg
	 */
	public boolean getLoginFlg() {
		return loginFlg;
	}

	/**
	 * loginFlgを設定します。
	 * @param loginFlg loginFlg
	 */
	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}
}
