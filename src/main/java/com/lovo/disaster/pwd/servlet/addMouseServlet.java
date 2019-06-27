package com.lovo.disaster.pwd.servlet;

import com.lovo.disaster.pwd.bean.MouseBean;
import com.lovo.disaster.pwd.bean.WormsBean;
import com.lovo.disaster.pwd.service.IMouseService;
import com.lovo.disaster.pwd.service.impl.MouseServiceImpl;
import com.lovo.disaster.util.StringInfo;
import com.lovo.disaster.util.UploadUtil;
import com.lovo.disaster.util.Verify;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

public class addMouseServlet extends HttpServlet {
    IMouseService service=new MouseServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        UploadUtil uploadUtil=new UploadUtil();
        boolean bl=false;
        MouseBean mouse=new MouseBean();
        String STR= request.getParameter("zName");
        try {
            Map<String, List<FileItem>> map= uploadUtil.getFileItem(request);
            //获得表单集合
            List<FileItem> listForm=   map.get("listForm");
            //获得文件集合
            List<FileItem> listFile=   map.get("listFile");
            String path= StringInfo.filePath;
            for (FileItem file:listFile){
                String fileName=file.getName();
                bl= Verify.verifyFile(fileName,new String[]{"jpg","doc"});
                if(!bl){
                    break;
                }
                fileName=StringInfo.getNewFileName(fileName);
                mouse.setPathImg(fileName);
                OutputStream out=new FileOutputStream(path+fileName);
                InputStream in=file.getInputStream();
                byte[] bytes=new byte[1024*10];
                int len=0;
                while ((len=in.read(bytes))>0){
                    //写
                    out.write(bytes,0,len);
                }
                out.close();
                in.close();
            }
            if (bl) {
                for (FileItem form : listForm) {
                    String formName = form.getFieldName();
                    String val = form.getString("UTF-8");
                    if (formName.equals("mouseName")) {
                        mouse.setMouseName(val);
                    } else if (formName.equals("food")) {
                        mouse.setFood(val);
                    } else if (formName.equals("mouseBreed")) {
                        mouse.setMouseBreed(val);
                    } else if (formName.equals("mouseEnemy")) {
                        mouse.setMouseEnemy(val);
                    } else if (formName.equals("pathImg")) {
                        mouse.setPathImg(val);
                    } else if (formName.equals("mouseMethod")) {
                        mouse.setMouseMethod(val);
                    }else if (formName.equals("mouseHarm")){
                        mouse.setMouseHarm(val);
                    }

                }
            }
            if (bl){
                service.addMouse(mouse);
                response.sendRedirect("mouseListServlet.lovo");
            }

        }
        catch (FileUploadException e){
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
