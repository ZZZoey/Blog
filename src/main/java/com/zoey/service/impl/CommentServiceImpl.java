package com.zoey.service.impl;

import com.zoey.dao.CommentDao;
import com.zoey.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by LSY on 2017/8/17.
 */

@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    public Integer getCommentCountByBlogId(int blogId) {
        return commentDao.getCommentCountByBlogId(blogId);
    }
}
