package com.survivor.survivormode.Controllers;

import com.survivor.survivormode.entities.Survivor;
import com.survivor.survivormode.service.SurvivorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/survivors")
public class SurvivorController {

    private final SurvivorService survivorService;

    @Autowired
    public SurvivorController(SurvivorService survivorService) {
        this.survivorService = survivorService;
    }

    @GetMapping
    public List<com.survivor.survivormode.Servives.Survivor> getAllSurvivors() {
        return survivorService.getAllSurvivors();
    }

    @GetMapping("/{id}")
    public com.survivor.survivormode.Servives.Survivor getSurvivorById(@PathVariable UUID id) {
        return survivorService.getSurvivorById(String.valueOf(id)).orElse(null);
    }

    @PostMapping
    public Survivor saveSurvivor(@RequestBody Survivor survivor) {
        return survivorService.saveSurvivor(survivor);
    }

    @DeleteMapping("/{id}")
    public void deleteSurvivor(@PathVariable UUID id) {
        survivorService.deleteSurvivor(String.valueOf(id));
    }

}