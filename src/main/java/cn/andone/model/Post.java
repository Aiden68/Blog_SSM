package cn.andone.model;

import java.util.Date;
import java.util.List;

/**
 * Created by JLL on 2017/4/18.
 */
public class Post {
    private Integer id;
    private String title;
    private String summary;
    private String content;
    private String catName;
    private Date createTime;
    private Date updateTime;
    private Integer visitor;
    private Integer like;
    private Integer comSize;
    List<Comment> CommentList;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getVisitor() {
        return visitor;
    }

    public void setVisitor(Integer visitor) {
        this.visitor = visitor;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public Integer getComSize() {
        return comSize;
    }

    public void setComSize(Integer comSize) {
        this.comSize = comSize;
    }

    public List<Comment> getCommentList() {
        return CommentList;
    }

    public void setCommentList(List<Comment> commentList) {
        CommentList = commentList;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", catName='" + catName + '\'' +
                ", createTime=" + createTime +
                ", visitors=" + visitor +
                '}';
    }
}
