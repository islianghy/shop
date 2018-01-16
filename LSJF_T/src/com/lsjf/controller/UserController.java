package com.lsjf.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import com.lsjf.model.*;
import com.lsjf.service.*;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.io.*;   

import javax.servlet.*;   
import javax.servlet.http.*;   

@Controller
public class UserController {
	
	@Resource	
	private UserService userService;


	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	@SuppressWarnings("finally")
	@RequestMapping("createuser")
	public String createuser(User record,HttpServletRequest request,HttpServletResponse response){
		try {	
			request.setCharacterEncoding("utf-8");  //这里不设置编码会有乱码            
			response.setContentType("text/html;charset=utf-8"); 
			
			 Date dt=new Date();
			//SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			// df.format(new Date())
			record.setCreatetime(dt);
			System.out.println(record);
			String str = userService.createuser(record);
			System.out.println(str);
			request.setAttribute("InfoMessage", str);
			return "account_login";
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "添加信息失败！具体异常信息：" + e.getMessage());
			return "index";
		} 
	}
	

	
	@RequestMapping("admin/getUserInfo")
	public String getUserInfo(HttpServletRequest request,HttpServletResponse response){
		try {		
			request.setCharacterEncoding("utf-8");  //这里不设置编码会有乱码            
			response.setContentType("text/html;charset=utf-8"); 
			
			List<User> brandlist=userService.getAll();
			System.out.println("用户为："+brandlist);
			request.setAttribute("userlist", brandlist);
			return "admin/manage_user";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "信息载入失败！具体异常信息：" + e.getMessage());
			return "result";
		}
	}
	
	
	@RequestMapping("admin/delete_user")
	public String delete_user(Integer id,HttpServletRequest request,HttpServletResponse response){
		try {	
			request.setCharacterEncoding("utf-8");  //这里不设置编码会有乱码            
			response.setContentType("text/html;charset=utf-8"); 
			
			String str = userService.delete(id);
			request.setAttribute("InfoMessage", str);
			return "admin/manage_user";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("InfoMessage", "删除信息失败！具体异常信息：" + e.getMessage());
			return "result";
		} 
	}
	
	
	
		@SuppressWarnings("finally")
		@RequestMapping("forget/update_user_mg")
		public String update_user_mg(Integer id,String phone,String mail,HttpServletRequest request,HttpServletResponse response){
			try {
				System.out.println(id);
				System.out.println(phone);
				System.out.println(mail);
				response.setContentType("text/html;charset=utf-8"); 
				int inpact=userService.updateMgById(id,phone,mail);
								
				return "forget/done";				
				
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("InfoMessage", "更新信息失败！具体异常信息：" + e.getMessage());
				return "result";
			} 
		}
		
			@SuppressWarnings("finally")
			@RequestMapping("admin/admin_exit")
			public String admin_exit(HttpServletRequest request,HttpServletResponse response){
				try {	
					request.getSession().removeAttribute("admin");
					return "admin/login";
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("InfoMessage", "更新信息失败！具体异常信息：" + e.getMessage());
					return "result";
				} 
			}
			
			
				
}
