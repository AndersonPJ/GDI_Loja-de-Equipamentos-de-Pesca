package Controller;

import Model.Produto;
import View.ProdutoView;
import java.io.InputStream;

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
                listaDeProdutos.add(new Produto(myResult.getInt     ("codigo"),
                                                myResult.getString  ("nome"),
                                                myResult.getString  ("categoria"),
                                                myResult.getString  ("fabricante"),
                                                myResult.getDouble  ("preco_de_compra"),
                                                myResult.getDouble  ("preco_de_venda"),
                                                myResult.getInt     ("id_estoquista"),
                                                myResult.getBlob    ("imagem")));
            }
            myResult.close();
            myStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaDeProdutos;
    }
    
    // Insere dados na DataBase
    public static void InserirProduto (Produto p, InputStream myInputStream, boolean[] options) {
        int counter = 0;
        String sql =    "INSERT INTO\n" +
                            "PRODUTO (codigo, nome";
        
        if (options [0]) { sql += ", categoria";  counter ++; }
        if (options [1]) { sql += ", fabricante"; counter ++; }
        
        sql +=  ", preco_de_compra, preco_de_venda, id_estoquista";
        
        if (options [2]) { sql += ", imagem)\n"; counter ++; } else { sql += ")\n"; } 
            
        sql += "VALUES\n" +
                "(?, ?";
        for (int i = 0 ; i < counter ; i ++) {
            sql += ", ?";
        }
        
        sql += ", ?, ?, ?)";

        try {
            PreparedStatement myStatement = myConnection.prepareStatement(sql);
            counter = 3;
            myStatement.setInt                          (1, p.getCodigo());
            myStatement.setString                       (2, p.getNome());
            if (options [0]) { myStatement.setString    (counter, p.getCategoria());        counter ++; }
            if (options [1]) { myStatement.setString    (counter, p.getFabricante());       counter ++; }
            myStatement.setDouble                       (counter, p.getPreco_de_compra());  counter ++;
            myStatement.setDouble                       (counter, p.getPreco_de_venda());   counter ++;
            myStatement.setInt                          (counter, p.getId_estoquista());    counter ++;
            if (options [2]) { myStatement.setBlob      (counter, myInputStream); }
            
            myStatement.executeUpdate();
            myStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoControl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //Seleciona apenas ID's que já existem no DB
    public static String[] getID_Estoquista () {
        String [] listID_Estoquista = null;
        try {
            Statement myStatement = myConnection.createStatement();
            ResultSet myResult = myStatement.executeQuery("SELECT id_estoquista FROM ESTOQUISTA");
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
            myResult.close();
            myStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoView.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listID_Estoquista;
    }
    
    // Verifica se Código já existe na DataBase
    public static boolean existeProduto (int codigo) {
        boolean isExist = false;
        String sql = "SELECT codigo FROM PRODUTO where codigo = " + codigo + "";
        
        try {
            Statement myStatement = myConnection.createStatement();
            ResultSet myResult = myStatement.executeQuery(sql);
            
            while(myResult.next()) {
                isExist = true;
                break;
            }
            myResult.close();
            myStatement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return isExist;
    }
}