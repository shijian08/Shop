package Servlet;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import dao.StarItemDao;
import model.staritem;
import util.FileUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class uploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ServletConfig config;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if (action != null){
			switch (action){
				case "up":
					doUp(request, response);
					break;
				case "sub":
					doSub(request, response);
					break;
			}
		}
	}

	private void doSub(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String starname = request.getParameter("starname");
		String content = request.getParameter("content");
		Double price = Double.valueOf(request.getParameter("price"));
		String image = request.getParameter("image");

		System.out.println(starname);

		staritem staritem = new staritem(1,starname,content,price,image);

		StarItemDao starItemDao = new StarItemDao();
		if (starItemDao.insert(staritem)){
			System.out.println("success~");
		}else
			System.out.println("fails");
		request.getRequestDispatcher("shop-list.jsp").forward(request, response);
	}

	private void doUp(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = "";
		request.setCharacterEncoding("utf-8");

		try {
			//创建SmartUpload对象
			SmartUpload mySmartUpload = new SmartUpload();
			//初始化SmartUpload对象
			mySmartUpload.initialize(config, request, response);
			//限制上传文件的大小为1024KB
			mySmartUpload.setMaxFileSize(1024 * 1024);
			//设置允许上传的文件类型
			mySmartUpload.setAllowedFilesList("jpg,jpeg,gif,bmp,png,JPG,JPEG,GIF,BMP,PNG");
			//设置禁止上传的文件类型
			mySmartUpload.setDeniedFilesList("exe,bat,jsp,htm,html");
			//上传文件
			mySmartUpload.upload();
			//获取上传的文件，由于只上传一个文件，所以索引为0
			com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
			String fileExt = "";
			String fileName = "";
			//下面代码处理文件上传
			if (myFile != null && !myFile.isMissing()) {
				fileExt = myFile.getFileExt();   //获取上传文件的扩展名
				if (fileExt == null) fileExt = "jpg"; //如果扩展名不存在，则为其赋值jpg作为文件的默认扩展名

				fileName = FileUtil.getNewFileName(fileExt);
				System.out.println(fileName);		//图片名称
				System.out.println(request.getContextPath() + "/item/images/" + fileName);
				//将上传的文件保存到指定路径处
				String filePath = "/item/images/";
				myFile.saveAs(filePath + fileName, SmartUpload.SAVE_VIRTUAL);
				msg = "文件上传成功!";
				request.setAttribute("imgFileName", fileName);
			} else {
				msg = "上传文件不存在！";
			}
			System.out.println(msg);
		} catch (SmartUploadException ex) {
			msg = "上传文件失败！";
		} catch (SecurityException e) {
			msg = "只能上传200K以内的图像文件";
		} catch (SQLException e) {
			msg = "数据库操作失败";
		}
		request.getRequestDispatcher("shop-add.jsp").forward(request, response);
	}

	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		this.config=config;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
}
