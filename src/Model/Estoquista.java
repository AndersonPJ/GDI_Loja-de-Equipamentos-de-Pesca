package Model;

/**
 *
 * @author AndersonPJ
 */
public class Estoquista {
    private int id_estoquista;
    
    public Estoquista (int id_estoquista) {
        this.setId_estoquista(id_estoquista);
    }

    public int getId_estoquista() {
        return id_estoquista;
    }

    public void setId_estoquista(int id_estoquista) {
        this.id_estoquista = id_estoquista;
    }
}
