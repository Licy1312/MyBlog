package com.licy.dao;

import java.util.List;


public interface IBaseDao<T> {
	/**
	 * ��Ӷ���
	 * @param t
	 * @return
	 */
	public T add(T t);
	/**
	 * ���¶���
	 * @param t
	 */
	public void update(T t);
	/**
	 * ����idɾ������
	 * @param id
	 */
	public void delete(int id);
	/**
	 * ����id���ض���
	 * @param id
	 * @return
	 */
	public T load(int id);

	public List<T> get(String hql);

	public List<T> getPage(String hql);
}

