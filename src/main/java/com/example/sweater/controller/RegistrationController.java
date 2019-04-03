package com.example.sweater.controller;

import com.example.sweater.domain.Role;
import com.example.sweater.domain.User;
import com.example.sweater.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.Set;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@RequestParam("username") String username, @RequestParam("password") String password,
                          Map<String, Object> model){
        if(userRepository.findByUsername(username) != null){
            model.put("message", "User with username: '" + username + "' exists");
            return "registration";
        }
        User user = new User(username, password, true, Set.of(Role.USER));
        userRepository.save(user);
        return "redirect:/greeting";
    }
}
