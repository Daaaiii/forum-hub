package api.Forum.domain.resposta;

import api.Forum.domain.topico.Topico;
import api.Forum.domain.usuario.Usuario;
import jakarta.persistence.*;

@Entity
public class Resposta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String mensagem;
    private String dataCriacao;
    private boolean solucao;

    @ManyToOne
    @JoinColumn(name = "topico_id")
    private Topico topico;

    @ManyToOne
    @JoinColumn(name = "autor_id")
    private Usuario autor;

    // Getters e Setters
}