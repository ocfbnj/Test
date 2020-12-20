package cn.ocfbnj.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/**
 * Created by acer on 2020/12/17.
 */
public class PdfServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //在响应客户端之前获取客户端的Session对象
        HttpSession session = req.getSession();

        //设置响应格式
        resp.setContentType("application/pdf");
        ServletOutputStream sos = resp.getOutputStream();

        String filename = "E:/file/阿里巴巴Java开发手册（详尽版）.pdf";

        FileInputStream in =new FileInputStream(new File(filename));
        byte[] bytes = new byte[1024];

        while (in.read(bytes)!=-1){
            sos.write(bytes);
        }
        in.close();
        sos.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


}
