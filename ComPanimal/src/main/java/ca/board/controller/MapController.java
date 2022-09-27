package ca.board.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MapController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String f_content = request.getParameter("f_content");
		f_content=URLEncoder.encode(f_content,"UTF-8");
		String reqUrl = "https://dapi.kakao.com/v2/local/search/address.xml?query="+f_content;
		System.out.println(reqUrl);
		
		URL url = new URL(reqUrl);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Authorization", "KakaoAK 71ba18ebf2ef4e4f8a313bf8e56332c0");
		
		BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		StringBuilder sb = new StringBuilder();
		while(true){
			String line = br.readLine();
			if(line == null) {
				break;
			}
			sb.append(line+"\n");
		}
		System.out.println(sb.toString());
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println(sb.toString());
		return null;
	}

}
