package db;

import java.sql.*;
/**
 * Description of TitreDAO  
 *
 * @author lesommer
 */
public class TitreDAO extends DataAccessObject{



    private static TitreDAO dao;
    
    
    private TitreDAO() {}
    
   
    public static TitreDAO getInstance() {
        if(dao == null) {
            dao = new TitreDAO();
        }
        return dao;
    }
    
    

   public final void insertPr(DataObject data, java.sql.Connection dbc) throws SQLException{

		Titre titre = (Titre) data;

	        String query = "INSERT INTO Titre(nom, album, artiste, categorie, prix) VALUE ("+titre.getNom()+"," +titre.getAlbum()+"," +titre.getArtiste()+","+ titre.getCategorie()+"," +titre.getPrix()+")" ;
	        super.statement(dbc,query);

    }
    
    
    public void deletePr(DataObject data, java.sql.Connection  dbc) throws SQLException{
     	
		Titre titre = (Titre) data;
	        String query = "DELETE FROM Titre WHERE id_titre="+titre.getId() ;
	        super.statement(dbc,query);

     
      }
     
	public void updatePr(DataObject data, java.sql.Connection  dbc) throws SQLException{
			
		Titre titre = (Titre) data;
	        String query = "UPDATE Titre SET nom="+titre.getNom()+", album="+titre.getAlbum()+", artiste="+titre.getArtiste()+", categorie="+titre.getCategorie()+", prix="+titre.getPrix()+" WHERE id_titre="+titre.getId();
	        super.statement(dbc,query);
	
	}

	public ResultSet findSomeMusic(){

		ResultSet res = null;
		
		try{
			String query = "SELECT titre.nom, album.nom, artiste.nom, categorie, prix FROM titre, album, artiste WHERE titre.album = album.id_album AND titre.artiste = artiste.id_artiste";
			Connection connexion = SQliteConnexion.getInstance().getConnection();
			System.out.println(query);
			res = connexion.prepareStatement(query).executeQuery();
			
		}
		catch(SQLException ex){
			System.out.println("Erreur lors de la requete SQL");
			res = null;
		}
		return res;
	}


	
}
 
