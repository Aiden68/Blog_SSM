package cn.andone.util;

import java.util.List;

/**
 * Created by JLL on 2017/4/20.
 */
public class DataTablesResult<T>{
    Integer draw;
    Integer recordsTotal;
    Integer recordsrecordsFiltered;
    List<T> data;

    public DataTablesResult(){}

    public DataTablesResult(Integer draw, Integer recordsTotal, Integer recordsrecordsFiltered, List<T> data) {
        this.draw = draw;
        this.recordsTotal = recordsTotal;
        this.recordsrecordsFiltered = recordsrecordsFiltered;
        this.data = data;
    }

    public Integer getDraw() {
        return draw;
    }

    public void setDraw(Integer draw) {
        this.draw = draw;
    }

    public Integer getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(Integer recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public Integer getRecordsrecordsFiltered() {
        return recordsrecordsFiltered;
    }

    public void setRecordsrecordsFiltered(Integer recordsrecordsFiltered) {
        this.recordsrecordsFiltered = recordsrecordsFiltered;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
