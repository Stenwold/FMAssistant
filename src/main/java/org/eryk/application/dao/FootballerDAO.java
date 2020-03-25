package org.eryk.application.dao;

import org.eryk.application.entity.Footballer;
import org.eryk.application.entity.Position;
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
    public List<Footballer> getScoutedFootballers(String positions, String status) {

        Session session = sessionFactory.getCurrentSession();
        String hql;
        if(positions.equals("ALL")){
            hql="from Footballer f";
        } else if(positions.equals("FB")||(positions.equals("W"))){
            hql="from Footballer f where f.position =: pos1 or f.position =: pos2";
        } else {
            hql="from Footballer f where f.position =: pos";
        }
        hql +=" order by f.positionRating desc";

        Query<Footballer> scouted = session.createQuery(hql);
        if(positions.equals("FB")){
            scouted.setParameter("pos1",Position.LB);
            scouted.setParameter("pos2",Position.RB);
        } else if((positions.equals("W"))){
            scouted.setParameter("pos1",Position.LW);
            scouted.setParameter("pos2",Position.RW);
        } else if(!positions.equals("ALL")){
            scouted.setParameter("pos",Position.valueOf(positions));
        }

        return scouted.getResultList();

    }

    @Override
    public List<Footballer> getTeamFootballers(String team) {

        Session session = sessionFactory.getCurrentSession();
        Query<Footballer> loadingQuery = session.createQuery(
                "from Footballer f " +
                   "where f.club =: team " +
                   "order by f.positionRating", Footballer.class);
        loadingQuery.setParameter("team",team);
        return loadingQuery.getResultList();
    }

}
