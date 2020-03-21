package org.eryk.application.repository;

import org.eryk.application.entity.Footballer;

import java.util.List;

public interface FootballerRepository {

    public List<Footballer> getFootballers();

    public Footballer getFootballer();

    public void saveFootballer();

    public void deleteFootballer();
}
