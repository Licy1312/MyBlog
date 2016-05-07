package com.licy.dao;

import com.licy.model.Musics;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
@Repository("musicsDao")
public class MusicsDao extends BaseDao<Musics> implements IMusicsDao {

}
