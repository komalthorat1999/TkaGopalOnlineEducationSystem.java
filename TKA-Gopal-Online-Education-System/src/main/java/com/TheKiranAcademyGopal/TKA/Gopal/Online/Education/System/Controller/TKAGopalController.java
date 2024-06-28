package com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.AWSStudent;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.AdvanceJavaStudent;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.Contact;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.JavaStudent;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.Login;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.PythonStudent;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.SalesForceStudent;
import com.TheKiranAcademyGopal.TKA.Gopal.Online.Education.System.Model.SeleniumStudent;

@Controller
public class TKAGopalController {

	@Autowired
	SessionFactory sf;

	@RequestMapping("/")
	public String name() {
		return "useradminbtn";
	}

	@RequestMapping("/gopalLogin")
	public String gopalLogin() {
		return "gopal";
	}

	@RequestMapping("/gopal")
	public String GopalLogin(Login login, Model model) {
		Session session = sf.openSession();
		Login dbLogin = session.get(Login.class, login.getPassword());
		String page = "gopal";
		String msg = null;
		if (dbLogin != null) {
			if (login.getUsername().equals(dbLogin.getUsername())) {
				page = "home";
			} else {
				msg = "Invalid Username";
			}
		} else {
			msg = "Invalid Password";
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/gopalgiraseCreateAccount")
	public String CreateAccount() {
		return "gopalgirase";
	}

	@RequestMapping("/gopalgirase")
	public String gopalgiraseDB(Login login, Model model) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Login dblogin = s.get(Login.class, login.getPassword());
		String page = "gopalgirase";
		String msg = null;
		if (dblogin != null) {
			if (login.getUsername().equals(dblogin.getUsername())) {
				msg = "Already Registered Password";
			}
		} else {
			page = "gopalgirase";
			s.save(login);
			t.commit();
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/homePage")
	public String homePage() {
		return "home";
	}

	@RequestMapping("/aboutPage")
	public String aboutPage() {
		return "about";
	}

	@RequestMapping("/coursesPage")
	public String coursesPage() {
		return "course";
	}

	@RequestMapping("/coursesDetailsPage")
	public String coursesDetailsPage() {
		return "detail";
	}

	@RequestMapping("/ourFeaturesPage")
	public String ourFeaturesPage() {
		return "feature";
	}

	@RequestMapping("/instructorsPage")
	public String instructorsPage() {
		return "team";
	}

	@RequestMapping("/testmonialPage")
	public String testmonialPage() {
		return "testimonial";
	}

	@RequestMapping("/contactPage")
	public String contactPage() {
		return "contact";
	}

	@RequestMapping("/contact")
	public String contactPageDB(Contact contact, Model model) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Contact dbContact = s.get(Contact.class, contact.getEmail());
		String page = "contact";
		String msg = null;
		if (dbContact != null) {
			if (contact.getEmail().equals(dbContact.getEmail())) {
				msg = "Already Registered Email";
			} else {
				page = "contact";
				s.save(contact);
				t.commit();
			}
		} else {
			msg = "Please enter the email id";
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/backToLogin")
	public String backToLogin() {
		return "useradminbtn";
	}

	@RequestMapping("/adgopallogin")
	public String adgopal(Login login) {
		return "adgopal";
	}

	@RequestMapping("/adgopal")
	public String adgopalc(Login login) {
		// if (login.username=="gopal" && login.password=="1111") {}
		if (login.username.equals("gopal") && login.password.equals("1111")) {
			return "ahome";
		} else {
			return "adgopal";
		}
	}

	@RequestMapping("/ahome")
	public String ahome() {
		return "ahome";
	}

	@RequestMapping("/viewuserlogin")
	public String viewuserlogin() {
		return "viewuserlogin";
	}

	@RequestMapping("/viewcorejavapage")
	public String viewcoursesPage() {
		return "viewcoursespage";
	}

	@RequestMapping("/viewadvancejavapage")
	public String viewadvancejavapage() {
		return "viewadvancejavastudent";
	}

	@RequestMapping("/viewseleniumpage")
	public String viewseleniumpage() {
		return "viewseleniumstudent";
	}

	@RequestMapping("/viewpythonpage")
	public String viewpythonpage() {
		return "viewpythonstudent";
	}

	@RequestMapping("/viewawspage")
	public String viewawspage() {
		return "viewawsstudent";
	}

	@RequestMapping("/viewsalesforcepage")
	public String viewsalesforcepage() {
		return "viewsalesforcestudent";
	}

	@RequestMapping("/viewcontactpage")
	public String viewcontactPage() {
		return "viewcontactpage";
	}

	@RequestMapping("/javastudentpage")
	public String javastudentpage() {
		return "javastudent";
	}

	@RequestMapping("/javastudent")
	public String javastudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(javaStudent);
		t.commit();
		return "javastudent";
	}

	@RequestMapping("/advancejavastudentpage")
	public String advancejavastudentpage() {
		return "advancejavastudent";
	}

	@RequestMapping("/advancejavastudent")
	public String advancejavastudent(AdvanceJavaStudent advanceJavaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(advanceJavaStudent);
		t.commit();
		return "advancejavastudent";
	}

	@RequestMapping("/seleniumstudentpage")
	public String seleniumstudentpage() {
		return "seleniumstudent";
	}

	@RequestMapping("/seleniumstudent")
	public String seleniumstudent(SeleniumStudent seleniumStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(seleniumStudent);
		t.commit();
		return "seleniumstudent";
	}

	@RequestMapping("/pythonstudentpage")
	public String pythonstudentpage() {
		return "pythonstudent";
	}

	@RequestMapping("/pythonstudent")
	public String pythonstudent(PythonStudent pythonStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(pythonStudent);
		t.commit();
		return "pythonstudent";
	}

	@RequestMapping("/awsstudentpage")
	public String awsstudentpage() {
		return "awsstudent";
	}

	@RequestMapping("/awsstudent")
	public String awsstudent(AWSStudent awsStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(awsStudent);
		t.commit();
		return "awsstudent";
	}

	@RequestMapping("/salesforcestudentpage")
	public String salesforcestudentpage() {
		return "salesforcestudent";
	}

	@RequestMapping("/salesforcestudent")
	public String salesforcestudent(SalesForceStudent salesForceStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(salesForceStudent);
		t.commit();
		return "salesforcestudent";
	}

	@RequestMapping("/farewell")
	public String farewell() {
		return "gallary";
	}

	@RequestMapping("/save")
	public String corejavasavestudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(javaStudent);
		t.commit();
		return "viewcoursespage";
	}

	@RequestMapping("/update")
	public String corejavaupdatestudent(JavaStudent javaStudent) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(javaStudent);
		t.commit();
		return "viewcoursespage";
	}

	@RequestMapping("/delete")
	public String corejavadeletestudent(String id) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		JavaStudent js = s.get(JavaStudent.class, id);
		s.delete(js);
		t.commit();
		return "viewcoursespage";
	}

}
