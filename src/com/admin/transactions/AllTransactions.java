package com.admin.transactions;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import com.blog.entity.Admin;
import com.blog.entity.Blog;

public class AllTransactions {
	
	 EntityManagerFactory f = Persistence.createEntityManagerFactory("BlogPersistence");
	 EntityManager m = f.createEntityManager();
	
	
	public boolean isPersist(String title,Date date,String content)
	{
		Blog b = new Blog(0,title,content,date);
		m.getTransaction().begin();
		m.persist(b);
		m.getTransaction().commit();
		m.close();
		f.close();
		return true;
	}
	public List<Blog> getAllBlogs()
	{
		String select = "Select b from Blog as b";
		TypedQuery<Blog> bQuery = m.createQuery(select,Blog.class);
		List<Blog> bList = bQuery.getResultList();
		m.close();
		f.close();
		return bList;
		
	}
	public boolean remove(long blogId)
	{
		Blog b = m.find(Blog.class, blogId);
		m.getTransaction().begin();
		m.remove(b);
		m.getTransaction().commit();
		m.close();
		f.close();
		return true;
	}
	public Blog getSingulerBlog(long blogId)
	{
		Blog b = m.find(Blog.class, blogId);
		m.close();
		f.close();
		return b;
	}
	public boolean update(String title,String content,long blogId)
	{
		Blog b = m.find(Blog.class, blogId);
		b.setBlogContent(content);
		b.setBlogTitle(title);
		m.getTransaction().begin();
		m.merge(b);
		m.getTransaction().commit();
		m.close();
		f.close();
		return true;
	}
	public boolean adminLogin(String _username,String _password)
	{
		String jpql = "from Admin as a where a.adminUsername = :_username";
		m.getTransaction().begin();
		TypedQuery<Admin> aQuery = m.createQuery(jpql,Admin.class);
		aQuery.setParameter("_username", _username);
		List<Admin> aList = aQuery.getResultList();
		for(Admin a : aList)
		{
			if(a.getAdminUsername().equals(_username)) {
				if(a.getAdminPassword().equals(_password)) {
					return true;
				}
			}
		}
		return false;
	}
	
}
