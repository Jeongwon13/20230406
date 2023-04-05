package board.model.common.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
 

// 암호화를 적용 해야되는 요청 : 로그인, 회원가입, 비밀번호 변경, 회원 탈퇴

// 필터가 적용될 url이 여러 개인 경우 : String 배열 초기화 형태 {}로 작성

@WebFilter(filterName = "encryptFilter", 
		   urlPatterns = {"/member/login", 
				   		  "/member/signUp", 
				   		  "/member/myPage/changePw", 
						  "/member/myPage/secession"
				   		  })

public class EncryptFilter extends HttpFilter implements Filter {
       
	
	public void init(FilterConfig fConfig) throws ServletException {}
	
	public void destroy() {}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
	 
		
		HttpServletRequest req = (HttpServletRequest)request;
		
	 
		EncryptWrapper wrapper = new EncryptWrapper(req);
		
 
		chain.doFilter(wrapper, response);
		
	}


}

