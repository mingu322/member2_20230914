package com.icia.member.controller;

import com.icia.member.dto.BoardDTO;
import com.icia.member.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
   @Autowired
    private BoardService boardService;

   @GetMapping("/boardSave")
    public String saveForm(){
       return "board/boardSave";
   }

   @PostMapping("/boardSave")
    public String save(@ModelAttribute BoardDTO boardDTO){
       boardService.boardSave(boardDTO);
       return "index";
   }

   @GetMapping("/boardList")
    public String findAll(Model model){
       List<BoardDTO> boardDTOList = boardService.findAll();
       model.addAttribute("boardList", boardDTOList);
       return "board/boardList";
   }

   @GetMapping("/boardDetail")
    public String findById(@RequestParam("id") Long id, Model model){
       BoardDTO boardDTO = boardService.findById(id);
       model.addAttribute("boardDetail", boardDTO);
       return "board/boardDetail";
   }

   @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
       boardService.delete(id);
       return "redirect:/board/boardList";
   }

   @GetMapping("/boardUpdate")
    public String updateForm(@RequestParam("id") Long id, Model model){
       BoardDTO boardDTO = boardService.updateForm(id);
       model.addAttribute("boardUpdate", boardDTO);
       System.out.println(boardDTO + "c");
       return "board/boardUpdate";
   }

   @PostMapping("/boardUpdate")
    public String update(@ModelAttribute BoardDTO boardDTO){
       boardService.update(boardDTO);
       return "redirect:/board/boardList";
   }
}
