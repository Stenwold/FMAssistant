package org.eryk.application.repository;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface FootballerRepository {

    List<Footballer> getFootballers();

    Footballer getFootballer(int id);

    void saveFootballer(Footballer footballer);

    void deleteFootballer();

    List<Footballer> getScoutedFootballers(String position, String status);

    List<Footballer> getTeamFootballers(String team);
}
