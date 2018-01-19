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
	  String sql = "select pi.party_name,pi.party_date,pi.party_price,pjh.insert_date "
	             + "from party_join_history as pjh left join party_info as pi on pjh.party_id=pi.party_id "
			     + "where user_id = ? ";

	  try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				PartyJoinHistoryDTO partyJoinHistoryDTO = new PartyJoinHistoryDTO();
				partyJoinHistoryDTO.setPartyName(rs.getString("party_name"));
				partyJoinHistoryDTO.setPartyDate(rs.getDate("party_date"));
				partyJoinHistoryDTO.setPartyPrice(rs.getString("party_price"));
				partyJoinHistoryDTO.setInsertDate(rs.getDate("insert_date"));

				System.out.println("----PartyJoinHistoryDAO");
				System.out.println(partyJoinHistoryDTO.getPartyName());
				System.out.println(partyJoinHistoryDTO.getPartyDate());
				System.out.println(partyJoinHistoryDTO.getPartyPrice());
				System.out.println(partyJoinHistoryDTO.getInsertDate());
				System.out.println("-----------------------");
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

/* とりあえず無効

	public ArrayList<MyPageDTO> getMyPageUserInfo(String user_id, String party_id) throws SQLException {
		ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();

		String sql = "SELECT ubit.user_id, iit.party_id, ubit.insert_date FROM party_join_history ubit LEFT JOIN party_info iit ON ubit.party_id = iit.id where ubit.party_id  = ? AND ubit.user_id  = ? ORDER BY insert_date DESC";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);
			preparedStatement.setString(2, party_id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				MyPageDTO dto = new MyPageDTO();

				dto.setUserId(resultSet.getString("user_id"));
				dto.setPartyId(resultSet.getString("party_id"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				myPageDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return myPageDTO;
	}
}

*/