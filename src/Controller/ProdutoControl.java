package Controller;

import Model.Produto;
import View.ProdutoView;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProdutoControl {
    private static Connection myConnection = ConnectionDataBase.getConnection();
    
    // Lista dados da DataBase
    public static ArrayList<Produto> getProdutos () {
        ArrayList<Produto> listaDeProdutos = new ArrayList();
        String sql = "SELECT * FROM PRODUTO";
        
        try {
            Statement myStatement = myConnection.createStatement();
            ResultSet myResult = myStatement.executeQuery(sql);
            
            while(myResult.next()) {
                listaDeProdutos.add(new Produto( myResult.getInt    ("codigo"),
                                                myResult.getString  ("nome"),
                                                myResult.getString  ("categoria"),
                                                myResult.getString  ("fabricante"),
                                                myResult.getDouble  ("preco_de_compra"),
                                                myResult.getDouble  ("preco_de_venda"),
                                                myResult.getInt     ("id_estoquista"),
                                                null));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaDeProdutos;
    }
    
    // Insere dados na DataBase
    public static void InserirProduto (Produto p) {
        String sql =    "INSERT INTO\n" +
                            "PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)\n" +
                        "VALUES\n" +
                            "(?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement myStatement = myConnection.prepareStatement(sql);
            
            myStatement.setInt      (1, p.getCodigo());
            myStatement.setString   (2, p.getNome());
            myStatement.setString   (3, p.getCategoria());
            myStatement.setString   (4, p.getFabricante());            
            myStatement.setDouble   (5, p.getPreco_de_compra());
            myStatement.setDouble   (6, p.getPreco_de_venda());
            myStatement.setInt      (7, p.getId_estoquista());

            myStatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //Seleciona apenas ID's que já existem no DB
    public static String[] getID_Estoquista () {
        String [] listID_Estoquista = null;
        try {
            Statement myStatement = myConnection.createStatement();
            ResultSet myResult = myStatement.executeQuery("SELECT DISTINCT id_estoquista FROM PRODUTO ORDER BY id_estoquista ASC");
            ArrayList <Integer> ArrayListID_Estoquista = new ArrayList ();
            
            while (myResult.next()) {
                ArrayListID_Estoquista.add(myResult.getInt("id_estoquista"));
            }

            listID_Estoquista = new String [ArrayListID_Estoquista.size()];
            int count = 0;
            
            Iterator<Integer> i = ArrayListID_Estoquista.iterator();
            
            while(i.hasNext()) {
                listID_Estoquista[count] = i.next().toString();
                count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoView.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listID_Estoquista;
    }
}