package com.survivor.survivormode.Repository;

import com.survivor.survivormode.Entities.Survivor;

import java.util.UUID;

interface SurvivorRepo extends JpaRepository<Survivor, UUID> {

}
