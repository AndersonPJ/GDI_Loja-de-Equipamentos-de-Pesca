package Model;
import java.sql.Date;

/**
 *
 * @author AndersonPJ
 */
public class Pessoa {
    private int id_pessoa;
    private String cpf, nome, sexo;
    private Date data_nascimento;

    public Pessoa (int id_pessoa, String cpf, String nome, String sexo, Date data_nascimento) {
        this.setId_pessoa(id_pessoa);
        this.setCpf(cpf);
        this.setNome(nome);
        this.setSexo(sexo);
        this.setData_nascimento(data_nascimento);
    }
    
    public int getId_pessoa() {
        return id_pessoa;
    }

    public String getCpf() {
        return cpf;
    }

    public String getNome() {
        return nome;
    }

    public String getSexo() {
        return sexo;
    }

    public Date getData_nascimento() {
        return data_nascimento;
    }

    public void setId_pessoa(int id_pessoa) {
        this.id_pessoa = id_pessoa;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public void setData_nascimento(Date data_nascimento) {
        this.data_nascimento = data_nascimento;
    }
}