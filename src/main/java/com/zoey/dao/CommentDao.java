package com.zoey.dao;

import com.zoey.entity.Blog;
import com.zoey.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface CommentDao {

    Integer getCommentCount(@Param("blogId") Integer blogId);

    List<Comment> listComment(HashMap<String,Object> param);

    Integer getTotalCommentCount(@Param("commentList") Boolean commentList);

    int deleteComment(int commentId);

    int deleteCommentByBlogId(Integer blogId);

    int addCommentByBlodId(Comment comment);

}
