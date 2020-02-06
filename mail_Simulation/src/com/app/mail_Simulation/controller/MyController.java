package com.app.mail_Simulation.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.mail_Simulation.model.MailInfo;
import com.app.mail_Simulation.model.UserInfo;
import com.app.mail_Simulation.service.MyService;

@RequestMapping("/")
@Component
public class MyController {
	@Autowired
	MyService ms;

	@Autowired
	HttpSession hs;

	@RequestMapping("/link1")
	public String m1() {
		return "signup";
	}

	@RequestMapping("/link2")
	public String m2() {
		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute UserInfo dto) {
		boolean b = ms.signup(dto);
		if (b) {
			return new ModelAndView("index", "msg", "Registration successfull");
		} else {
			return new ModelAndView("signup", "msg", "*Email alredy exist");
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String email, String password) {
		UserInfo sdto = ms.login(email, password);
		if (sdto != null) {
			hs.setAttribute("email1", sdto.getEmail());
			return new ModelAndView("home", "sdto", sdto);
		} else {
			return new ModelAndView("login", "msg", "*Invalid Username or password");
		}
	}

	@RequestMapping("/link4")
	public ModelAndView inbox() {
		if (hs.getAttribute("email1") != null) {

			List<MailInfo> list = ms.inbox();
			return new ModelAndView("inbox", "list", list);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/link5")
	public ModelAndView sent() {
		if (hs.getAttribute("email1") != null) {
			List<MailInfo> list = ms.sent();
			return new ModelAndView("sent", "list", list);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/link10")
	public ModelAndView draft() {
		if (hs.getAttribute("email1") != null) {
			List<MailInfo> list = ms.draft();
			return new ModelAndView("draft", "list", list);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/link7")
	public ModelAndView m5() {
		if (hs.getAttribute("email1") != null) {
			String email = (String) hs.getAttribute("email1");
			return new ModelAndView("compose", "msg", email);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/compose")
	public ModelAndView compose(@RequestParam String to, String subject, String msg) {
		String from = (String) hs.getAttribute("email1");
		UserInfo b = ms.compose(from, to, subject, msg);
		if (b != null) {
			return new ModelAndView("home", "msg", "mail sent");
		} else {
			return new ModelAndView("home", "msg", "mail not sent and saved in draft ");
		}

	}

	@RequestMapping("/link9")
	public ModelAndView logout() {
		if (hs.getAttribute("email1") != null) {
			hs.invalidate();
			return new ModelAndView("login", "msg", "logout success");
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam int id) {

		boolean b = ms.delete(id);
		if (b) {
			return new ModelAndView("home", "msg", "deleted successfully");
		} else {
			return new ModelAndView("home", "msg", "delete failed");
		}
	}

	@RequestMapping("/link3")
	public ModelAndView forgot() {
		return new ModelAndView("forgot");
	}

	@RequestMapping(value = "/forgot", method = RequestMethod.POST)
	public ModelAndView forgot(@RequestParam String email, String password, String seqanswer, String cpassword) {
		boolean b = ms.forgot(email, password, seqanswer, cpassword);
		if (b) {
			return new ModelAndView("login", "msg", "Password Changed Successfully");
		} else {
			return new ModelAndView("forgot", "msg", "details not matched");
		}
	}

	@RequestMapping("/link8")
	public ModelAndView change() {
		if (hs.getAttribute("email1") != null) {
			return new ModelAndView("change");
		} else {
			return new ModelAndView("login", "msg", "pls Login First");
		}
	}

	@RequestMapping(value = "/change", method = RequestMethod.POST)
	public ModelAndView change(@RequestParam String password, String cpassword) {
		boolean b = ms.change(password, cpassword);
		if (b) {
			return new ModelAndView("home", "msg", "Password Changed Successfully done");
		} else {
			return new ModelAndView("change", "msg", "password and confirm password not matched");
		}
	}

	@RequestMapping("/link6")
	public ModelAndView deleted() {
		if (hs.getAttribute("email1") != null) {
			List<MailInfo> list = ms.deletedMail();
			return new ModelAndView("deletedMail", "list", list);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/showInbox")
	public ModelAndView showInbox(@RequestParam int id) {
		if (hs.getAttribute("email1") != null) {
			MailInfo dto = ms.showInbox(id);
			return new ModelAndView("showInbox", "dto", dto);
		} else {
			return new ModelAndView("login", "msg", "pls Login First");
		}
	}

	@RequestMapping("/showSent")
	public ModelAndView showSent(@RequestParam int id) {
		if (hs.getAttribute("email1") != null) {
			MailInfo dto = ms.showSent(id);
			return new ModelAndView("showSent", "dto", dto);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/draftMail")
	public ModelAndView draft(@RequestParam int draftMail) {
		hs.setAttribute("eid", draftMail);
		if (hs.getAttribute("email1") != null) {
			MailInfo dto = ms.draftMail(draftMail);
			return new ModelAndView("composeMail", "dto", dto);
		} else {
			return new ModelAndView("login", "msg", "Please Login First");
		}
	}

	@RequestMapping("/compMail")
	public ModelAndView compMail(@RequestParam String to, String sub, String body) {
		String from = (String) hs.getAttribute("email1");
		UserInfo b = ms.compMail(from, to, sub, body);
		if (b != null) {
			return new ModelAndView("home", "msg", "mail sent successfully");
		} else {
			return new ModelAndView("home", "msg", "mail not sent and saved in draft ");
		}

	}

	@RequestMapping("/perdelete")
	public ModelAndView perDelete(@RequestParam int id) {
		boolean b = ms.deletedMail(id);
		if (b) {
			List<MailInfo> list = ms.deletedMail();
			return new ModelAndView("deletedMail", "list", list);
		} else {
			List<MailInfo> list = ms.deletedMail();
			return new ModelAndView("deletedMail", "list", list);
		}
	}

}
