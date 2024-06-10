package demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;

@Service
public class SessionService {
	@Autowired
	HttpSession session;
	
	public void setAttribute(String name, Object data) {
		session.setAttribute(name, data);
	}
	
	public <T> T getAttribute(String name){
		return (T)session.getAttribute(name);
	}
	
	public void removeAttribute(String name) {
		session.removeAttribute(name);
	}
	
}
