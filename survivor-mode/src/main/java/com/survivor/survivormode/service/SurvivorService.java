package com.survivor.survivormode.service;

import com.survivor.survivormode.Servives.Survivor;
import com.survivor.survivormode.Servives.SurvivorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SurvivorService {

    private final SurvivorRepository survivorRepository;

    @Autowired
    public SurvivorService(SurvivorRepository survivorRepository) {
        this.survivorRepository = survivorRepository;
    }

    public List<Survivor> getAllSurvivors() {
        return survivorRepository.findAll();
    }

    public Optional<Survivor> getSurvivorById(String id) {
        return survivorRepository.findById(id);
    }

    public Survivor saveSurvivor(Survivor survivor) {
        // Assuming survivor doesn't exist with the given ID
        return survivorRepository.save(survivor);
    }

    public void deleteSurvivor(String id) {
        survivorRepository.deleteById(id);
    }


}

