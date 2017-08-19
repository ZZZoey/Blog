package com.zoey.util;

import com.zoey.entity.PageBean;

/**
 * Created by LSY on 2017/8/18.
 */
public class PageUtil {

    public static String genPageNation(PageBean pageBean,Integer total,String targetUrl){
        StringBuilder sb=new StringBuilder();
        sb.append("<ul class=\"pagination w3_paging\">");
        Integer totalPageSize=total%pageBean.getPageSize()==0?total/pageBean.getPageSize():total/pageBean.getPageSize()+1;
        if(pageBean.getPage()==1){
            sb.append("<li class=\"disabled\"><a aria-label=\"Previous\"><span aria-hidden=\"true\">«</span></a></li>");
        }else{
            sb.append("<li><a href=\"" + targetUrl + "&page=" + (pageBean.getPage()-1) + "\" aria-label=\"Previous\"><span aria-hidden=\"true\">«</span></a></li>");
        }
        for(int i=pageBean.getPage()-3;i<=pageBean.getPage()+3&&i<=totalPageSize;i++){
            if(i<=0){
                continue;
            }
            if(pageBean.getPage()==i){
                sb.append(" <li class=\"active\"><a  href=\"" + targetUrl + "&page=" + i + "\">"+i+" <span class=\"sr-only\">(current)</span></a></li>");
            }else{
                sb.append("<li><a  href=\"" + targetUrl + "&page=" + i + "\">"+i+"</a></li>");
            }
        }

        if(pageBean.getPage()==totalPageSize){
            sb.append("<li class=\"disabled\"><a  aria-label=\"Next\"><span aria-hidden=\"true\">»</span></a></li>");
        }else{
            sb.append("<li><a href=\"" + targetUrl + "&page=" + (pageBean.getPage()+1) + "\" aria-label=\"Next\"><span aria-hidden=\"true\">»</span></a></li>");
        }
        sb.append("</ul>");
        return sb.toString();
    }

}
