package com.zoey.service;

import com.zoey.entity.Blog;
import com.zoey.entity.Comment;
import com.zoey.entity.PageBean;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface CommentService {

    Integer getCommentCount(Integer blogId);

    List<Comment> listComment(HashMap<String,Object> param);

    String genPageNation(PageBean pageBean, String targetUrl);

    Integer getTotalCommentCount(Boolean commentList);

    List<Comment> listCommentWithBlog(HashMap<String, Object> param);

    int deleteComment(int commentId);

    int deleteCommentByBlogId(Integer blogId);

    int addCommentByBlodId(Comment comment);
}
