package br.com.allsolution.model;

/**
 * Descrição: Classe Cadastro de Cliente
 * Data: 04/05/2019
 * Hora: 09:19
 * @author Walter
 */
public class CadastroCliente {
    
    private Integer id;
    private String nome;
    private String email;
    private String endereco;
    private String telefone;

   
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    
    
    
}
