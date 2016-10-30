package com.licy.dao;

import java.util.List;

/**
 * ������DAO���������������а�����Hibernate�����л��������Ͷ�SQL�Ĳ���
 * @author Administrator
 * @param <T>
 */
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

}

