package com.icia.member.service;

import com.icia.member.dto.BoardDTO;
import com.icia.member.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;
    public void boardSave(BoardDTO boardDTO) {
        boardRepository.boardSave(boardDTO);
    }

    public List<BoardDTO> findAll() {
        return boardRepository.findAll();
    }

    public BoardDTO findById(Long id) {
        return boardRepository.findById(id);
    }

    public void delete(Long id) {
        boardRepository.delete(id);
    }

    public BoardDTO updateForm(Long id) {
        BoardDTO result = boardRepository.updateForm(id);
        System.out.println(result + "s");
        return result;
    }

    public void update(BoardDTO boardDTO) {
        boardRepository.update(boardDTO);
    }
}
