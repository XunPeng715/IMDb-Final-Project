package edu.neu.webtool.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import edu.neu.webtool.exception.GenreException;
import edu.neu.webtool.exception.UserException;
import edu.neu.webtool.pojo.Email;
import edu.neu.webtool.pojo.User;



public class UserDAO extends DAO {
	public UserDAO() {
	}

	public User get(String username, String password) throws UserException {
		try {
			begin();
			Query q = getSession().createQuery("from User where username = :username and password = :password");
			q.setString("username", username);
			q.setString("password", password);			
			User user = (User) q.uniqueResult();
			commit();
			return user;
		} catch (HibernateException e) {
			rollback();
			throw new UserException("Could not get user " + username+e.getMessage(), e);
		}
	}
	
	public User getByUsername(String username) throws UserException {
		try {
			begin();
			Query q = getSession().createQuery("from User where username = :username");
			q.setString("username", username);		
			User user = (User) q.uniqueResult();
			commit();
			return user;
		} catch (HibernateException e) {
			rollback();
			throw new UserException("Could not get user " + username+e.getMessage(), e);
		}
	}
	
	public void update(User u) throws UserException {
		try {
			begin();
			getSession().update(u);
			commit();
		} catch (HibernateException e) {
			rollback();
			throw new UserException("Could not save the user", e);
		}
	}
	
	
	public User get(long userId) throws UserException {
		try {
			begin();
			Query q = getSession().createQuery("from User where personID= :personID");
			q.setLong("personID", userId);		
			User user = (User) q.uniqueResult();
			commit();
			return user;
		} catch (HibernateException e) {
			rollback();
			throw new UserException("Could not get user " + userId, e);
		}
	}

	public User register(User u)
			throws UserException {
		try {
			begin();
			System.out.println("inside DAO");

			Email email = new Email(u.getEmail().getEmailAddress());
			User user = new User(u.getUsername(), u.getPassword());

			user.setFirstName(u.getFirstName());
			user.setLastName(u.getLastName());
			
			
			user.setEmail(email);//??????????????????
			
			email.setUser(user);
			
			getSession().save(user);
			commit();
			return user;

		} catch (HibernateException e) {
			rollback();
			throw new UserException("Exception while creating user: " + e.getMessage());
		}
	}

	public void delete(User user) throws UserException {
		try {
			begin();
			getSession().delete(user);
			commit();
		} catch (HibernateException e) {
			rollback();
			throw new UserException("Could not delete user " + user.getUsername(), e);
		}
	}


}
