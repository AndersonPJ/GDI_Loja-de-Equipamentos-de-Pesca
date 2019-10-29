package Model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

public class ProdutoTableModel extends AbstractTableModel {
    private ArrayList <Produto> listaDeProdutos;
    private String[] colunas = new String [] {"Código", "Nome", "Categoria", "ID Estoquista", "Fabricante", "Preço de Compra", "Preço de Venda"};

    public ProdutoTableModel() {
        this.listaDeProdutos = new ArrayList ();
    }

    public ProdutoTableModel(ArrayList<Produto> listaDeProdutos) {
        this.listaDeProdutos = listaDeProdutos;
    }

    public ArrayList<Produto> getListaDeProdutos() {
        return this.listaDeProdutos;
    }

    public String[] getColunas() {
        return this.colunas;
    }

    public void setListaDeProdutos(ArrayList<Produto> listaDeProdutos) {
        this.listaDeProdutos = listaDeProdutos;
    }

    public void setColunas(String[] colunas) {
        this.colunas = colunas;
    }
    
    @Override
    public int getRowCount() {
        return this.listaDeProdutos.size();
    }

    @Override
    public int getColumnCount() {
        return this.colunas.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Produto p = listaDeProdutos.get(rowIndex);
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
        return this.colunas[columnIndex];
    } 
}