package com.licy.dao;

import java.util.List;


public interface IBaseDao<T> {
	/**
	 *
	 * @param t
	 * @return
	 */
	public T add(T t);
	/**
	 *
	 * @param t
	 */
	public void update(T t);
	/**

	 * @param id
	 */
	public void delete(int id);
	/**
	 * @param id
	 * @return
	 */
	public T load(int id);

	public List<T> get(String hql);

	public List<T> getPage(String hql,int start,int end);
}

