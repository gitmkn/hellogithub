package com.fzn.toolbean;
import java.io.UnsupportedEncodingException;
public class MyTools{
	public static String toChinese(String str){
		if(str==null)	str="";
		try {
			str=new String(str.getBytes("ISO-8859-1"),"UTF-8");	
		} catch (UnsupportedEncodingException e) {
			str="";
			e.printStackTrace();
		}
		return str;
	}
}
