package cycle.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cycle.dao.NicePartyListDAO;
import cycle.dto.NicePartyListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class NicePartyListAction extends ActionSupport implements SessionAware {

	public String partyId;

	public Map<String,Object>session;

	public NicePartyListDAO nicePartyListDAO = new NicePartyListDAO();

	public ArrayList<NicePartyListDTO> nicePartyListListDTO = new ArrayList<NicePartyListDTO>();

	public String execute() throws SQLException {
		String result = SUCCESS;

		nicePartyListListDTO = nicePartyListDAO.nice(session.get("userId").toString());
		Iterator<NicePartyListDTO> iterator = nicePartyListListDTO.iterator();

		if(!(iterator.hasNext())){
			nicePartyListListDTO = null;
		}

		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ArrayList<NicePartyListDTO> getNicePartyListDTO() {
		return nicePartyListListDTO;
	}

	public void setNicePartyListDTO(ArrayList<NicePartyListDTO> nicePartyListListDTO) {
		this.nicePartyListListDTO = nicePartyListListDTO;
	}

	public String getPartyId() {
		return partyId;
	}

	public void setPartyId(String partyId) {
		this.partyId = partyId;
	}

}