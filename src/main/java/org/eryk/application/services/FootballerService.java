package org.eryk.application.services;

import org.eryk.application.dao.FootballerDAO;
import org.eryk.application.entity.Footballer;
import org.eryk.application.serviceInterfaces.FootballerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FootballerService implements FootballerServiceInterface {

    @Autowired
    private FootballerDAO footballerDAO;

    @Override
    @Transactional
    public List<Footballer> getFootballers() {

        return footballerDAO.getFootballers();
    }

    @Override
    @Transactional
    public Footballer getFootballer(int id) {
        return footballerDAO.getFootballer(id);
    }

    @Override
    @Transactional
    public void saveFootballer(Footballer footballer) {
        footballerDAO.saveFootballer(footballer);
    }

    @Override
    public void deleteFootballer() {

    }

    @Override
    @Transactional
    public List<Footballer> getTeamFootballers(String team) {
        return footballerDAO.getTeamFootballers(team);
    }
}
