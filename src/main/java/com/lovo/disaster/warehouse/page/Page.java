package com.lovo.disaster.warehouse.page;

public class Page {
    //当前页
    private  int currentPage=1;
    //总行数
    private  int allCount=0;
    //总页数
    private  int allPage=0;
    //起始位置
    private  int start=0;
    //每页显示多少行
    private  int countPage=5;

    /**
     * 设置起始位置
     * @param start
     */
    public void setStart(int start) {
      this.start=(this.currentPage-1)*this.countPage;
    }


    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getAllCount() {
        return allCount;
    }

    public void setAllCount(int allCount) {
        this.allCount = allCount;
    }

    public int getAllPage() {
        return allPage;
    }

    public void setAllPage(int allPage) {
        this.allPage = allPage;
    }

    public int getStart() {
        return start;
    }



    public int getCountPage() {
        return countPage;
    }

    public void setCountPage(int countPage) {
        this.countPage = countPage;
    }
}
