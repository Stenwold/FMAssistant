package org.eryk.application.services;

import org.eryk.application.dao.FootballerDAO;
import org.eryk.application.entity.Footballer;
import org.eryk.application.serviceInterfaces.FootballerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class FootballerService implements FootballerServiceInterface {

    @Autowired
    private FootballerDAO footballerDAO;

    @Override
    @Transactional
    public List<Footballer> getFootballers() {

        return footballerDAO.getFootballers();
    }

    @Override
    public Footballer getFootballer() {
        return null;
    }

    @Override
    public void saveFootballer() {

    }

    @Override
    public void deleteFootballer() {

    }
}
