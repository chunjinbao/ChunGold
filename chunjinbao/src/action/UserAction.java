package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class UserAction extends ActionSupport{
	private User user;
	private UserService userService;
	//上传文件域  
	private File upload;  
	//上传文件类型  
	private String uploadContentType;  
	//上传文件名  
	private String uploadFileName;  
	//直接在sturts.xml文件中配置值的属性  
	private String savePath_images;
	
	public String userDetail(){
		return "userDetail";
	}
	public String share(){
		return "share";
	}
	
	public String moreMyInfoEditor(){
//		HttpSession session = ServletActionContext.getRequest().getSession();
//		user = userService.findUserByTel((String) session.getAttribute("curUsrTel"));
		user = userService.findUserByTel("15012341231");
		
		return "userDetailEdit";
	}
	
	public String moreMyInfoEdit(){
		Date date = new Date();
		HttpSession session = ServletActionContext.getRequest().getSession();
		try {
			String realPath = ServletActionContext.getServletContext().getRealPath(getSavePath_images() + "\\" +   
					session.getAttribute("userId")+date.getTime()+"."+this.getUploadContentType().split("/")[1]);
			FileOutputStream fos = new FileOutputStream(realPath);  
			FileInputStream fis = new FileInputStream(getUpload());  
			byte[] buffer = new byte[3145728];  
			int len = 0;  
			try {  
				while((len = fis.read(buffer)) > 0){  
					fos.write(buffer, 0, len);  
				}  
			} catch (IOException e) {  
				e.printStackTrace();  
			}  
		}catch(FileNotFoundException e){  
			e.printStackTrace();  
		}
		user.setHeadPortrait(session.getAttribute("userId").toString()+date.getTime()+"."+this.getUploadContentType().split("/")[1]);
		userService.update(user);
		return "userDetail";
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getSavePath_images() {
		return savePath_images;
	}
	public void setSavePath_images(String savePath_images) {
		this.savePath_images = savePath_images;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	
}
