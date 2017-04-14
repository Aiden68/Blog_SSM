package cn.andone.pojo;

public class Catagory {
    private Integer id;

    private String catname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCatname() {
        return catname;
    }

    public void setCatname(String catname) {
        this.catname = catname == null ? null : catname.trim();
    }
}