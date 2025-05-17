package com.example.dao;

import com.example.model.User;

import javax.persistence.*;
import java.util.List;

public class UserDao {

    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("userPU");

    public void addUser(User user) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();

        try {
            tx.begin();
            em.persist(user);
            tx.commit();
        } finally {
            em.close();
        }
    }

    public List<User> getAllUsers() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT u FROM User u", User.class).getResultList();
        } finally {
            em.close();
        }
    }

    public User getUserById(Integer id) {
        EntityManager em = emf.createEntityManager();
        try {
        	User user = em.find(User.class, id);
        	return user;
        } finally {
            em.close();
        }
    }

    public void updateUser(User user) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            em.merge(user);
            tx.commit();
        } finally {
            em.close();
        }
    }

    public void deleteUser(Integer id) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            tx.begin();
            User user = em.find(User.class,id);
            if (user != null) {
                em.remove(user);
            }
            tx.commit();
        } finally {
            em.close();
        }
    }
}
