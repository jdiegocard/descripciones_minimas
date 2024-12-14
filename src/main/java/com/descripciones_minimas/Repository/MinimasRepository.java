package com.descripciones_minimas.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.descripciones_minimas.Entity.DescripcionMinima;

import java.util.List;

@Repository
public interface MinimasRepository extends JpaRepository<DescripcionMinima, Long> {

    List<DescripcionMinima> findBySubpartida(String subpartida);
}
