package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/member/memberSave")
    public String memberSave(){
        return "member/memberSave";
    }

    @PostMapping("/member/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        memberService.memberSave(memberDTO);
        return "index";
    }

    @GetMapping("/member/memberList")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "member/memberList";
    }

    @GetMapping("/member/memberLogin")
    public String loginForm(){
        return "member/memberLogin";
    }

    @PostMapping("/member/memberLogin")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model){
        boolean loginResult = memberService.login(memberDTO);
        if (loginResult){
            model.addAttribute("memberEmail", memberDTO.getMemberEmail());
            return "redirect:/member/memberList";
        } else {
            return "member/memberLogin";
        }
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        memberService.delete(id);
        return "redirect:/member/memberList";
    }

}
