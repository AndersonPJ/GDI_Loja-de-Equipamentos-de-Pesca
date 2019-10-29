package Model;

import java.awt.image.BufferedImage;

public class Produto {
    private int codigo, id_estoquista;
    private double preco_de_compra, preco_de_venda;
    private String nome, categoria, fabricante;
    private BufferedImage imagem;

    public Produto (int codigo, String nome, String categoria, String fabricante, double preco_de_compra, double preco_de_venda, int id_estoquista, BufferedImage imagem) {
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
        return this.codigo;
    }

    public double getPreco_de_compra() {
        return this.preco_de_compra;
    }

    public double getPreco_de_venda() {
        return this.preco_de_venda;
    }

    public int getId_estoquista() {
        return this.id_estoquista;
    }

    public String getNome() {
        return this.nome;
    }

    public String getCategoria() {
        return this.categoria;
    }

    public String getFabricante() {
        return this.fabricante;
    }

    public BufferedImage getImagem() {
        return this.imagem;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setPreco_de_compra(double preco_de_compra) {
        this.preco_de_compra = preco_de_compra;
    }

    public void setPreco_de_venda(double preco_de_venda) {
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