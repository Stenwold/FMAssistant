package org.eryk.application.serviceInterfaces;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface SquadServiceInterface {
    Footballer[] prepareMainSquadTable(List<Footballer> previousTable);
    List<Footballer> filterCandidatesForMainSquad(List<Footballer> candidates);
}
