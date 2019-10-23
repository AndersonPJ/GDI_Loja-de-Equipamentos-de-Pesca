package Model;

/**
 *
 * @author AndersonPJ
 */
public class Funcionario {
    private int id_funcionario, salario;
    private String cargo, ctps;
    
    public Funcionario (int id_funcionario, int salario, String cargo, String ctps) {
        this.setId_funcionario(id_funcionario);
        this.setSalario(salario);
        this.setCargo(cargo);
        this.setCtps(ctps);
    }

    public int getId_funcionario() {
        return id_funcionario;
    }

    public int getSalario() {
        return salario;
    }

    public String getCargo() {
        return cargo;
    }

    public String getCtps() {
        return ctps;
    }

    public void setId_funcionario(int id_funcionario) {
        this.id_funcionario = id_funcionario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public void setCtps(String ctps) {
        this.ctps = ctps;
    }
}
