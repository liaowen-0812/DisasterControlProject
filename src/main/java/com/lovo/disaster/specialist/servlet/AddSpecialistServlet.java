package com.lovo.disaster.specialist.servlet;

import com.lovo.disaster.specialist.bean.SysDoctor;
import com.lovo.disaster.specialist.service.ISpecialistService;
import com.lovo.disaster.specialist.service.impl.ISpecialistServiceImpl;
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

public class AddSpecialistServlet extends HttpServlet {
    ISpecialistService service=new ISpecialistServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/plain;charset=UTF-8");
        UploadUtil uploadUtil=new UploadUtil();
        boolean bl=false;
        SysDoctor doctor=new SysDoctor();
       String STR= request.getParameter("zName");
        try {
            Map<String, List<FileItem>> map= uploadUtil.getFileItem(request);
            //获得表单集合
            List<FileItem> listForm=   map.get("listForm");
            //获得文件集合
            List<FileItem> listFile=   map.get("listFile");
            String path= StringInfo.filePath;
            for (FileItem file:listFile) {
                String fileName=file.getName();
                bl= Verify.verifyFile(fileName,new String[]{"jpg","doc"});
                if(!bl){
                    break;
                }
               fileName=StringInfo.getNewFileName(fileName);
                doctor.setDoctorImgPath("img/"+fileName);
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
            if(bl){
                for (FileItem form:listForm) {
                    String formName=form.getFieldName();
                    String val=form.getString("UTF-8");
                    if(formName.equals("zName")){
                        doctor.setDoctorName(val);
                    }else if(formName.equals("sex")){
                        doctor.setDoctorSex(val);
                    }else if(formName.equals("cName")){
                        doctor.setDoctorBirthday(val);
                    }else if(formName.equals("sName")){
                        doctor.setDoctorSpeciality(val);
                    }else if(formName.equals("wName")){
                        doctor.setDoctorPost(val);
                    }else if(formName.equals("fName")){
                        doctor.setDoctorTel(val);
                    }else if(formName.equals("gName")){
                        doctor.setDoctorCompany(val);
                    }else if(formName.equals("xName")){
                        doctor.setDoctorHome(val);
                    }else if(formName.equals("yName")){
                        doctor.setDoctorEmail(val);
                    }
                }
            }
            if(bl){
                service.addSpecialist(doctor);
                response.sendRedirect("specialistServlet.lovo");
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
