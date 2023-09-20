package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/memberSave")
    public String memberSave(){
        return "member/memberSave";
    }

    @PostMapping("/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        memberService.memberSave(memberDTO);
        return "index";
    }

    @GetMapping("/memberList")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "member/memberList";
    }

    @GetMapping("/memberDetail")
    public String findById(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("memberDetail", memberDTO);

        /*if(memberDTO.getFileAttached() == 1){
            List<MemberFileDTO> memberFileDTOList = memberService.findFile(id);
            model.addAttribute("memberFileList", memberFileDTOList);
        }*/
        return "member/memberDetail";
    }

    @GetMapping("/memberLogin")
    public String loginForm(){
        return "member/memberLogin";
    }

    @PostMapping("/memberLogin")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model){
        boolean loginResult = memberService.login(memberDTO);
        if (loginResult){
            session.setAttribute("loginEmail", memberDTO.getMemberEmail());
            model.addAttribute("memberEmail", memberDTO.getMemberEmail());
            return "member/memberMain";
        } else {
            return "member/memberLogin";
        }
    }

    @GetMapping("logout")
    public String logout(HttpSession session){
        session.removeAttribute("loginEmail");
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        memberService.delete(id);
        return "redirect:/member/memberList";
    }

    @GetMapping("/memberUpdate")
    public String updateForm(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO =memberService.updateForm(id);
        model.addAttribute("memberUpdate", memberDTO);
        return "member/memberUpdate";
    }

    @PostMapping("/memberUpdate")
    public String update(@ModelAttribute MemberDTO memberDTO){
        memberService.update(memberDTO);
        return "redirect:/member/memberList";
    }


}
