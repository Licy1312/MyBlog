package com.licy.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.inject.Inject;
import java.lang.reflect.ParameterizedType;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BaseDao<T> implements IBaseDao<T> {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Inject
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	private Class<?> clz;

	public Class<?> getClz() {
		if (clz == null) {
			clz = ((Class<?>)
					(((ParameterizedType) (this.getClass().getGenericSuperclass())).getActualTypeArguments()[0]));
		}
		return clz;
	}


	@Override
	public T add(T t) {
		getSession().save(t);
		return t;
	}

	@Override
	public void update(T t) {
		getSession().update(t);
	}

	@Override
	public void delete(int id) {
		getSession().delete(this.load(id));
	}

	@Override
	public T load(int id) {
		return (T) getSession().load(getClz(), id);
	}
	@Override
	public List<T> get(String hql){
		Query query = getSession().createQuery(hql);
		return query.list();
	}

	@Override
	public List<T> getPage(String hql,int start,int end) {
		Query query = getSession().createQuery(hql);
		query.setFirstResult(start);
		query.setMaxResults(end);
		return query.list();
	}
	public List<T> getRecentOrder(String sql){
		Query query = getSession().createSQLQuery(sql);
		return query.list();
	}

	/*
	 */
	public List<T> list(String hql, Object[] args) {
		return this.list(hql, args, null);
	}


	public List<T> list(String hql, Object arg) {
		return this.list(hql, new Object[]{arg});
	}


	public List<T> list(String hql) {
		return this.list(hql, null);
	}

	/**
	 * Select role from Role where role.user.id in(:ids) and username = :username and nickname=?
	 * @param hql
	 * @param args
	 * @param alias
	 * @return
	 */
	public List<T> list(String hql, Object[] args, Map<String, Object> alias) {
		Query query = getSession().createQuery(hql);
		setAliasParameter(query, alias);
		setParameter(query, args);
		return query.list();
	}


	private void setAliasParameter(Query query, Map<String, Object> alias) {
		if (alias != null) {
			Set<String> keys = alias.keySet();
			for (String key : keys) {
				Object val = alias.get(key);
				if (val instanceof Collection) {
					// ��ѯ�������б�
					query.setParameterList(key, (Collection) val);
				} else {
					query.setParameter(key, val);
				}
			}
		}
	}
	//��ͨ�����ĸ�ֵ
	private void setParameter(Query query, Object[] args) {
		if (args != null && args.length > 0) {
			int index = 0;
			for (Object arg : args) {
				query.setParameter(index++, arg);
			}
		}
	}



}