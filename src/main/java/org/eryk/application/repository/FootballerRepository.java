package org.eryk.application.repository;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface FootballerRepository {

    List<Footballer> getFootballers();

    Footballer getFootballer();

    void saveFootballer();

    void deleteFootballer();
}
