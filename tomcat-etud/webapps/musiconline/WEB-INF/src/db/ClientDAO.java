package db;

import java.sql.*;
/**
 * Description of ClientDAO  
 *
 * @author lesommer
 */
public class ClientDAO extends DataAccessObject{



    private static ClientDAO dao;
    
    
    private ClientDAO() {    }
    
   
    public static ClientDAO getInstance() {
        if(dao == null) {
            dao= new ClientDAO();
        }
        return dao;
    }
    
    

   public  void insertPr(DataObject data, java.sql.Connection dbc) throws SQLException{

		Client client = (Client) data;
		System.out.println("PAR ICI !!");

	        String query = "INSERT INTO Client VALUES ('"+client.getLogin()+"', '"+client.getEmail()+"', '"+client.getPassword()+"', '"+client.getNom()+"', '"+client.getPrenom()+"', '"+client.getDateNaissance()+"', '"+client.getAdresse()+"', '"+client.getCodePostal()+"', '"+client.getVille()+"', '"+client.getPays()+"')";
		
		System.out.println(query);
	        super.statement(dbc,query);

    }
    
    
    public  void deletePr(DataObject data, java.sql.Connection dbc) throws SQLException{
     	
		Client client = (Client) data;
	        String query = "DELETE FROM Client WHERE loginClient='"+client.getLogin()+"'";
	        super.statement(dbc,query);

     
      }
     
	public  void updatePr(DataObject data, java.sql.Connection dbc) throws SQLException{
			
		Client client = (Client) data;

	        String query = "UPDATE Client SET nom='" + client.getEmail()+"',prenom='" + client.getPassword()+"',email='" + client.getNom()+"',passwd='" + client.getPrenom()+"',date_naissance='" + client.getDateNaissance()+"',adresse='" + client.getAdresse()+"',code_postal='" + client.getCodePostal()+"',ville='" + client.getVille()+"',pays='" + client.getPays() +"' WHERE loginClient='" + client.getLogin()+"'";
		System.out.println(query);
	        super.statement(dbc,query);
	
	}

	

}

