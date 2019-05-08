package com.itcase.project.enetity;

import java.util.List;

/**
 * @Author zhanglipeng
 * @Date 2019/5/8 11:20
 */
public class Page<T> {

    private Integer start;

    private Integer end;

    private Integer current;

    private Integer total;

    private Integer pageSize;

    private Integer pageCount;

    private T date;

    private String tomTime;


    public Page(Integer pageSize,Integer total,Integer current){
        this.pageSize = pageSize;
        this.total = total;

        this.current = current;

        this.pageCount = total / pageSize;
        if(total % pageSize != 0){
            this.pageCount ++;
        }
        this.current = current;
        if(current>pageCount){
            this.current = pageCount;
        }
        this.current = current;

        this.start = (current-1)*pageSize;
        this.end =  start + pageSize;

        if(end > this.total){
            this.end = this.total;
        }

    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getEnd() {
        return end;
    }

    public void setEnd(Integer end) {
        this.end = end;
    }

    public Integer getCurrent() {
        return current;
    }

    public void setCurrent(Integer current) {
        this.current = current;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public T getDate() {
        return date;
    }

    public void setDate(T date) {
        this.date = date;
    }

    public String getTomTime() {
        return tomTime;
    }

    public void setTomTime(String tomTime) {
        this.tomTime = tomTime;
    }
}
