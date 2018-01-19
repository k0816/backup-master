package cycle.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.PartyJoinHistoryDAO;
import cycle.dto.DTO;
import com.opensymphony.xwork2.ActionSupport;

public class PartyJoinHistoryAction extends ActionSupport {

	ArrayList<PartyJoinHistoryDTO> partyJoinHistoryDTOList = new ArrayList<PartyJoinHistoryDTO>();

	public String execute(){
		PartyJoinHistoryDAO partyJoinHitoryDAO = new PartyJoinHistoryDAO();
		partyJoinHistoryDTOList = partyJoinHitoryDAO.select()
		String result = SUCCESS;

		return  result;
	}

	public ArrayList<PartyJoinHistoryDTO> getPartyJoinHistoryDTOList() {
		return partyJoinHistoryDTOList;
	}

	public void setPartyJoinHistoryDTOList(ArrayList<PartyJoinHitoryDTO> partyJoinHistoryDTOList) {
		this.partyJoinHistoryDTOList = partyJoinHistoryDTOList;
	}

}
