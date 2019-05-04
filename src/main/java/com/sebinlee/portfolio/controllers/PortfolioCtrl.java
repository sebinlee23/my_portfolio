package com.sebinlee.portfolio.controllers;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class PortfolioCtrl {
	@Autowired
    private JavaMailSender sender;
	
	@RequestMapping("/")
	public String index() {
		return "portfolio/index.jsp";
	}
	
    @PostMapping("/send")
    public String sendMail(@RequestParam(value="name") String name, @RequestParam(value="email") String email, @RequestParam(value="message") String SenderMessage, RedirectAttributes redirectAttributes) {
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);

        try {
            helper.setTo("sebinlee23@gmail.com");
            helper.setText(name + ", " + email +  "\r\n" + SenderMessage);
            helper.setSubject("Mail From Spring Boot");
        } catch (MessagingException e) {
            e.printStackTrace();
            return "Error while sending mail ..";
        }
        sender.send(message);
        redirectAttributes.addFlashAttribute("success", "Thank you for contacting me, your message was successfully submitted");
        return "redirect:/";
    }
}
