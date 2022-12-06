package br.com.fatecpg.cadastro;

import java.util.ArrayList;

/**
 *
 * @author rocha
 */
public class Bd {
    private static ArrayList<Contato> contatos;
    public static ArrayList<Contato> getContatos(){
        if(contatos == null  ){
            contatos = new ArrayList<>();
            Contato c1 = new Contato();
            c1.setNome("Maria");
            c1.setFone("+551399111-11111");
            c1.setEmail("maria@empresa.com");
            contatos.add(c1);
            
            Contato c2 = new Contato();
            c2.setNome("José");
            c2.setFone("+55139919-1514");
            c2.setEmail("jose@empresa.com.br");
            contatos.add(c2);
        }
        
        return contatos;
    }
}
