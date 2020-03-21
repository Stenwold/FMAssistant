package org.eryk.application.serviceInterfaces;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface FootballerServiceInterface {

    List<Footballer> getFootballers();

    Footballer getFootballer();

    void saveFootballer();

    void deleteFootballer();
}
