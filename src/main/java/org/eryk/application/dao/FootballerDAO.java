package org.eryk.application.dao;

import org.eryk.application.entity.Footballer;
import org.eryk.application.repository.FootballerRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FootballerDAO implements FootballerRepository {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Footballer> getFootballers() {

        Session session = sessionFactory.getCurrentSession();

        Query<Footballer> loadingQuery = session.createQuery("from Footballer",Footballer.class);

        return loadingQuery.getResultList();
    }

    @Override
    public Footballer getFootballer(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Footballer.class,id);
    }

    @Override
    public void saveFootballer(Footballer footballer) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(footballer);
    }

    @Override
    public void deleteFootballer() {

    }

    @Override
    public List<Footballer> getTeamFootballers(String team) {

        Session session = sessionFactory.getCurrentSession();
        Query<Footballer> loadingQuery = session.createQuery("from Footballer f where f.club =: team", Footballer.class);
        loadingQuery.setParameter("team",team);
        return loadingQuery.getResultList();
    }


}
