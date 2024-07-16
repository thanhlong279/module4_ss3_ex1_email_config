package com.example.ex1_save_email_configuration.controllers;

import com.example.ex1_save_email_configuration.models.EmailConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {
    @GetMapping("/config")
    public ModelAndView config() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("emailConfig", new EmailConfig());
        return modelAndView;
    }

    @PostMapping("/emailConfig")
    public ModelAndView emailConfig(@ModelAttribute("emailConfig")EmailConfig emailConfig) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("emailConfig", emailConfig);
        return modelAndView;
    }

}
