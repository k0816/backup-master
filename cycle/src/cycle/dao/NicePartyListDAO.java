package cycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cycle.dto.NicePartyListDTO;
import cycle.util.DBConnector;

public class NicePartyListDAO {
	  DBConnector db= new DBConnector();

	public ArrayList<NicePartyListDTO> nice(String userId) {
	ArrayList<NicePartyListDTO> nicePartyListListDTO = new ArrayList<NicePartyListDTO>();
	  Connection con = db.getConnection();

	  /* MYSQLの商品履歴に商品情報を加えている(紐づけている) */
	  String sql = "select pi.party_id,pi.party_name,pi.party_date,pi.party_price,pi.party_place,npl.insert_date "
	             + "from nice_party_list as npl left join party_info as pi on npl.party_id=pi.party_id "
			     + "where user_id = ? ";

	  try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,userId);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				NicePartyListDTO nicePartyListDTO = new NicePartyListDTO();
				nicePartyListDTO.setPartyId(rs.getString("party_id"));
				nicePartyListDTO.setPartyName(rs.getString("party_name"));
				nicePartyListDTO.setPartyDate(rs.getDate("party_date"));
				nicePartyListDTO.setPartyPrice(rs.getString("party_price"));
				nicePartyListDTO.setPartyPlace(rs.getString("party_place"));
				nicePartyListDTO.setInsertDate(rs.getDate("insert_date"));
			    nicePartyListListDTO.add(nicePartyListDTO);

			}

		} catch(SQLException e) {
			e.printStackTrace();

		}

		try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return nicePartyListListDTO;

	}

}
