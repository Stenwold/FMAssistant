package org.eryk.application.serviceInterfaces;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface FootballerServiceInterface {

    List<Footballer> getFootballers();

    Footballer getFootballer(int id);

    void saveFootballer(Footballer footballer);

    void deleteFootballer();

    List<Footballer> getTeamFootballers(String team);
}
