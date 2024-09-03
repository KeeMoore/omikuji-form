package com.kmoore.omikujiform.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

    @RequestMapping("/omikuji")
    public String omikujiForm() {
        return "omikujiForm"; // Render the form as shown in the wireframe
    }

    @PostMapping("/omikuji/process")
    public String processForm(String number,String person, String city, String livingThing, String hobby, String niceMessage, HttpSession session) {
        session.setAttribute("number", number);
        session.setAttribute("person", person);
        session.setAttribute("city", city);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("hobby", hobby);
        session.setAttribute("niceMessage", niceMessage);
        return "redirect:/omikuji/show";
    }

    @RequestMapping("/omikuji/show")
    public String showFortune(HttpSession session, Model model) {
        model.addAttribute("number", session.getAttribute("number"));
        model.addAttribute("city", session.getAttribute("city"));
        model.addAttribute("person", session.getAttribute("person"));
        model.addAttribute("hobby", session.getAttribute("hobby"));
        model.addAttribute("livingThing", session.getAttribute("livingThing"));
        model.addAttribute("niceMessage", session.getAttribute("niceMessage"));
        return "showFortune"; // Dynamically render the template using session data
    }
}

