package com.icia.member.repository;

import com.icia.member.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void boardSave(BoardDTO boardDTO) {
        sql.insert("Board.save", boardDTO);
    }

    public List<BoardDTO> findAll() {
        return sql.selectList("Board.findAll");
    }

    public BoardDTO findById(Long id) {
        return sql.selectOne("Board.findById", id);
    }

    public void delete(Long id) {
        sql.delete("Board.delete", id);
    }

    public BoardDTO updateForm(Long id) {
        BoardDTO result = sql.selectOne("Board.updateForm", id);
        System.out.println(result + "r");
        return result;
    }

    public void update(BoardDTO boardDTO) {
        sql.update("Board.update", boardDTO);
    }
}
