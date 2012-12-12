/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.edu.seu.cose.jellyjolly.controller;

import cn.edu.seu.cose.jellyjolly.dao.CommentDataAccess;
import cn.edu.seu.cose.jellyjolly.dao.DataAccessException;
import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author rAy <predator.ray@gmail.com>
 */
@Controller
public class CommentController {

    private CommentDataAccess commentDataAccess;

    public CommentController(CommentDataAccess commentDataAccess) {
        this.commentDataAccess = commentDataAccess;
    }

    @RequestMapping(value = "/comment", method = RequestMethod.POST)
    public String addComment(@RequestParam long postId,
            @RequestParam String authorName, @RequestParam String email,
            @RequestParam String homePage, @RequestParam String content)
            throws DataAccessException {
        Date now = new Date();
        commentDataAccess.addNewComment(postId, authorName, email, homePage,
                content, now);
        return "redirect:/post/" + postId;
    }



    @RequestMapping(value = "/admin/comment", method = RequestMethod.POST)
    public String addComment(@RequestParam long postId,
            @RequestParam long userId, @RequestParam String content)
            throws DataAccessException {
        Date now = new Date();
        commentDataAccess.addNewComment(postId, userId, content, now);
        return "redirect:/post/" + postId;
    }
}