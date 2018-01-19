package cycle.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.PartyJoinHistoryDAO;
import cycle.dto.PartyJoinHistoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class PartyJoinHistoryAction extends ActionSupport implements SessionAware {


	public Map<String,Object>session;

	public PartyJoinHistoryDAO partyJoinHistoryDAO = new PartyJoinHistoryDAO();

	public ArrayList<PartyJoinHistoryDTO> partyJoinHistoryListDTO = new ArrayList<PartyJoinHistoryDTO>();

	public String execute() throws SQLException {
		String result = SUCCESS;

		partyJoinHistoryListDTO = partyJoinHistoryDAO.history(session.get("userId").toString());
		Iterator<PartyJoinHistoryDTO> iterator = partyJoinHistoryListDTO.iterator();

		if(!(iterator.hasNext())){
			partyJoinHistoryListDTO = null;
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public ArrayList<PartyJoinHistoryDTO> getPartyJoinHistoryListDTO() {
		return partyJoinHistoryListDTO;
	}

	public void setPartyJoinHistoryListDTO(ArrayList<PartyJoinHistoryDTO> partyJoinHistoryListDTO) {
		this.partyJoinHistoryListDTO = partyJoinHistoryListDTO;
	}

}
