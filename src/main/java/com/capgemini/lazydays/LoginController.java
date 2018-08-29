package com.capgemini.lazydays;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.capgemini.lazydays.LoginBean;

@Controller
public class LoginController {
    @RequestMapping("/")
    public String home(Map<String, Object> model){
		
		return "login";
	}

    @RequestMapping(value = "/login")
   
    public String submit(@Valid @ModelAttribute("userForm") LoginBean userForm,
            BindingResult result, Map<String, Object> model) {
 
        if (result.hasErrors()) {
            return "login";
        }
 
        return "success";
    }
}
