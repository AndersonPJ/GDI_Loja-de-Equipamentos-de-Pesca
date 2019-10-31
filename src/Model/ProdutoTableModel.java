package Model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

public class ProdutoTableModel extends AbstractTableModel {
    private ArrayList <Produto> listOfProducts;
    private String[] columns = new String [] {"Código", "Nome", "Categoria", "ID Estoquista", "Fabricante", "Preço de Compra", "Preço de Venda"};

    public ProdutoTableModel() {
        this.listOfProducts = new ArrayList ();
    }

    public ProdutoTableModel(ArrayList<Produto> listOfProducts) {
        this.listOfProducts = listOfProducts;
    }

    public ArrayList<Produto> getListOfProducts() {
        return this.listOfProducts;
    }

    public String[] getColumns() {
        return this.columns;
    }

    public void setListOfProducts(ArrayList<Produto> listOfProducts) {
        this.listOfProducts = listOfProducts;
    }

    public void setColumns(String[] columns) {
        this.columns = columns;
    }
    
    @Override
    public int getRowCount() {
        return this.listOfProducts.size();
    }

    @Override
    public int getColumnCount() {
        return this.columns.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Produto p = listOfProducts.get(rowIndex);
        DecimalFormat df = new DecimalFormat("R$ 0.00");
        
        switch (columnIndex) {
            case 0: return p.getCodigo();
            case 1: return p.getNome();
            case 2: return p.getCategoria();
            case 3: return p.getId_estoquista();
            case 4: return p.getFabricante();
            case 5: return df.format(p.getPreco_de_compra());
            case 6: return df.format(p.getPreco_de_venda());
            default: throw new IndexOutOfBoundsException();
        }
    }
    
    @Override
    public String getColumnName(int columnIndex) {
        return this.columns[columnIndex];
    } 
}