package com.descripciones_minimas.Controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.descripciones_minimas.Entity.DescripcionMinima;
import com.descripciones_minimas.Repository.MinimasRepository;
import org.springframework.web.bind.annotation.PutMapping;



@RestController
@RequestMapping("/minimas")

public class MinimaController {

    @Autowired
    private MinimasRepository repository;

    @GetMapping
    public List<DescripcionMinima> Listar() {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    public DescripcionMinima Consultar(@PathVariable long id) {
        return repository.findById(id).orElse(null);
    }

    @PostMapping
    public DescripcionMinima Crear(@RequestBody DescripcionMinima minima) { 
        return repository.save(minima);
    }

    @PutMapping("/{id}")
    public DescripcionMinima Modificar(@PathVariable long id, @RequestBody DescripcionMinima minima) {
        minima.setId(id);
        return repository.save(minima);
    }
    
    @PatchMapping("/{id}")
    public DescripcionMinima actualizaParcial(@PathVariable long id, @RequestBody Map<String, Object> actualizaciones) {
        DescripcionMinima minimaExistente = repository.findById(id).orElseThrow(() -> new RuntimeException("No se encontro registro con el ID: " + id)); 

            if (actualizaciones.containsKey("uso")) {
                minimaExistente.setUso((String) actualizaciones.get("uso"));
            }
            if (actualizaciones.containsKey("destino")) {
                minimaExistente.setDestino((String) actualizaciones.get("destino"));
                
            }

            if (actualizaciones.containsKey("serial")) {
                minimaExistente.setSerial((String) actualizaciones.get("serial"));
                
            }
            if (actualizaciones.containsKey("subpartida")) {
                minimaExistente.setSubpartida((String) actualizaciones.get("subpartida"));
                
            }
            return repository.save(minimaExistente);
    }
    
    @DeleteMapping ("/{id}")
    public void eliminar(@PathVariable long id) {
        repository.deleteById(id);
    }

    @GetMapping("/subpartida/{subpartida}")
    public List<DescripcionMinima> consultarPorSubpartida(@PathVariable String subpartida) {
        return repository.findBySubpartida(subpartida);
    }


}
