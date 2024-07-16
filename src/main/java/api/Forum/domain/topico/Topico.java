package api.Forum.domain.topico;

import api.Forum.domain.curso.Curso;
import api.Forum.domain.resposta.Resposta;
import api.Forum.domain.usuario.Usuario;
import jakarta.persistence.*;

import java.util.List;

@Entity
public class Topico {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;
    private String mensagem;
    private String dataCriacao;
    private String status;

    @ManyToOne
    @JoinColumn(name = "autor_id")
    private Usuario autor;

    @ManyToOne
    @JoinColumn(name = "curso_id")
    private Curso curso;

    @OneToMany(mappedBy = "topico")
    private List<Resposta> respostas;


}