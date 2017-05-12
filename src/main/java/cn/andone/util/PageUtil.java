package cn.andone.util;

import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;
import java.util.List;

/**
 * Created by JLL on 2017/4/18.
 */
public class PageUtil<T> {
    private static final int DEFAULT_PAGE_SIZE = 6;
    private int totalPage;
    private int totalNum;
    private int currentPage;
    private int pageSize;

    private List<T> result;

    public PageUtil(){}

    public PageUtil(int totalPage, int totalNum, int currentPage, int pageSize, List<T> result){
        this.totalPage = totalPage;
        this.totalNum = totalNum;
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.result = result;
        if(pageSize == 0){
            pageSize = DEFAULT_PAGE_SIZE;
        }
    }
    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(int totalNum) {
        this.totalNum = totalNum;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getResult() {
        return result;
    }

    public void setResult(List<T> result) {
        this.result = result;
    }
}
