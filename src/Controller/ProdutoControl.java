package Controller;

import Model.Produto;
import java.awt.image.BufferedImage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProdutoControl {
    private static Connection myConnection = ConnectionDataBase.getConnection();
    
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
}
