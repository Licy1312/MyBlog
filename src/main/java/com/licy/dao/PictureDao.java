package com.licy.dao;

import com.licy.model.Picture;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("pictureDao")
public class PictureDao extends BaseDao<Picture> implements IPicturDao {
}
