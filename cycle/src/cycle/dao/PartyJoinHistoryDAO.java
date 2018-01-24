package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cycle.dto.PartyJoinHistoryDTO;
import cycle.util.DBConnector;

public class PartyJoinHistoryDAO {
	  DBConnector db= new DBConnector();

	public ArrayList<PartyJoinHistoryDTO> history(String userId) {
	ArrayList<PartyJoinHistoryDTO> partyJoinHistoryListDTO = new ArrayList<PartyJoinHistoryDTO>();
	  Connection con = db.getConnection();

	  /* MYSQLの商品履歴に商品情報を加えている */
	  String sql = "select pi.party_id,pi.party_name,pi.party_date,pi.party_price,pjh.insert_date "
	             + "from party_join_history as pjh left join party_info as pi on pjh.party_id=pi.party_id "
			     + "where user_id = ? ";

	  try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				PartyJoinHistoryDTO partyJoinHistoryDTO = new PartyJoinHistoryDTO();
				partyJoinHistoryDTO.setPartyId(rs.getString("party_id"));
				partyJoinHistoryDTO.setPartyName(rs.getString("party_name"));
				partyJoinHistoryDTO.setPartyDate(rs.getDate("party_date"));
				partyJoinHistoryDTO.setPartyPrice(rs.getString("party_price"));
				partyJoinHistoryDTO.setInsertDate(rs.getDate("insert_date"));
			    partyJoinHistoryListDTO.add(partyJoinHistoryDTO);

			}

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return partyJoinHistoryListDTO;

	}

}
