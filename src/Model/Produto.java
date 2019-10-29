package Model;

import java.awt.image.BufferedImage;

public class Produto {
    private int codigo, preco_de_compra, preco_de_venda, id_estoquista;
    private String nome, categoria, fabricante;
    private BufferedImage imagem;

    public Produto (int codigo, String nome, String categoria, String fabricante, int preco_de_compra, int preco_de_venda, int id_estoquista, BufferedImage imagem) {
        this.setCodigo(codigo);
        this.setNome(nome);
        this.setCategoria(categoria);
        this.setFabricante(fabricante);
        this.setPreco_de_compra(preco_de_compra);
        this.setPreco_de_venda(preco_de_venda);
        this.setId_estoquista(id_estoquista);
        this.setImagem(imagem);
    }
    
    public int getCodigo() {
        return codigo;
    }

    public int getPreco_de_compra() {
        return preco_de_compra;
    }

    public int getPreco_de_venda() {
        return preco_de_venda;
    }

    public int getId_estoquista() {
        return id_estoquista;
    }

    public String getNome() {
        return nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getFabricante() {
        return fabricante;
    }

    public BufferedImage getImagem() {
        return imagem;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setPreco_de_compra(int preco_de_compra) {
        this.preco_de_compra = preco_de_compra;
    }

    public void setPreco_de_venda(int preco_de_venda) {
        this.preco_de_venda = preco_de_venda;
    }

    public void setId_estoquista(int id_estoquista) {
        this.id_estoquista = id_estoquista;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public void setImagem(BufferedImage imagem) {
        this.imagem = imagem;
    }
}