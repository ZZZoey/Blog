package com.zoey.service.impl;

import com.zoey.dao.CommentDao;
import com.zoey.entity.Blog;
import com.zoey.entity.Comment;
import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import com.zoey.service.CommentService;
import com.zoey.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */

@Service("commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Autowired
    private BlogService blogService;

    public Integer getCommentCount(Integer blogId) {
        return commentDao.getCommentCount(blogId);
    }

    public List<Comment> listComment(HashMap<String, Object> param) {
        return commentDao.listComment(param);
    }

    public String genPageNation(PageBean pageBean, String targetUrl) {
        Integer commentCount = commentDao.getCommentCount(null);
        return PageUtil.genPageNation(pageBean,commentCount,targetUrl);
    }

    public Integer getTotalCommentCount(Boolean blogId) {
        return commentDao.getTotalCommentCount(blogId);
    }

    public List<Comment> listCommentWithBlog(HashMap<String, Object> param) {
        List<Comment> commentList=listComment(param);
        for (Comment comment : commentList) {
            if(comment.getBlogId()!=null&&comment.getBlogId()!=0){
                Blog blog=blogService.getBlog(comment.getBlogId());
                comment.setBlog(blog);
            }

        }
        return commentList;
    }

    public int deleteComment(int commentId) {
        return commentDao.deleteComment(commentId);
    }

    public int deleteCommentByBlogId(Integer blogId) {
        return commentDao.deleteCommentByBlogId(blogId);
    }

}
