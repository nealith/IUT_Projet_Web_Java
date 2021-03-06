package db;

import java.sql.*;

public class PaysDAO extends DataAccessObject{

   private static PaysDAO dao;
    
    private PaysDAO() { super(); }
    
   
    public static PaysDAO getInstance()  {
        if(dao == null) {
            dao= new PaysDAO();
        }
        return dao;
    }
    
    

   public void insertPr(DataObject data, java.sql.Connection dbc) throws SQLException{

		Pays pays = (Pays) data;
		System.out.println("PAR LA PAYS !!");
	        String query = "insert into Pays VALUES ('"+pays.getNom()+"')";
		System.out.println(query);
	        super.statement(dbc,query);

    }
    
    
    public void deletePr(DataObject data, java.sql.Connection dbc) throws SQLException{
     	
		Pays pays = (Pays) data;
	        String query = "DELETE FROM Pays WHERE nom="+pays.getNom();
	        super.statement(dbc,query);

     
      }
     
	public void updatePr(DataObject data, java.sql.Connection dbc) throws SQLException{
	
		Pays pays = (Pays) data;
	        String query = "UPDATE Pays SET nom="+pays.getNom()+" WHERE nom="+pays.getNom();
	        super.statement(dbc,query);
	
	}
	
}

