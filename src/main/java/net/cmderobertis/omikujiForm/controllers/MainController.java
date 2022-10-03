package net.cmderobertis.omikujiForm.controllers;

import net.cmderobertis.omikujiForm.models.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class MainController {
    @RequestMapping("/")
    String index() {
        return "index.jsp";
    }

    @RequestMapping("/omikuji")
    String form() {
        return "omikuji.jsp";
    }

    @PostMapping("/submit")
    String submit(
            @RequestParam(value = "number") int number,
            @RequestParam(value = "city") String city,
            @RequestParam(value = "person") String person,
            @RequestParam(value = "hobby") String hobby,
            @RequestParam(value = "thing") String thing,
            @RequestParam(value = "nice") String nice,
            HttpSession session
    ) {
        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("hobby", hobby);
        session.setAttribute("thing", thing);
        session.setAttribute("nice", nice);
        return "redirect:/omikuji/show";
    }

    @RequestMapping("/omikuji/show")
    String show() {
        return "show.jsp";
    }
}
