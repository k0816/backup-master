package cycle.action;

import com.opensymphony.xwork2.ActionSupport;

public class PartyDetailAction extends ActionSupport {

	public String partyId;

	public String partyName;

	public String partyDate;

	public String partyPrice;

	public String partyCapacity;

	public String partyPlace;

	public String ageMinimum;

	public String ageMaximum;

	public String partyDetail;


	public String execute() {

		return SUCCESS;

	}


	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	public String getPartyId() {
		return partyId;
	}

	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}
}


