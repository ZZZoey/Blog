package com.zoey.util;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by LSY on 2017/8/12.
 */
public class ResponseUtil {

    public static void write(HttpServletResponse response,Object o){
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=null;
        try {
            out=response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.println(o.toString());
        out.flush();
        out.close();
    }
}
