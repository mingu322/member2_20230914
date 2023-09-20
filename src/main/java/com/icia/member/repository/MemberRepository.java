package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import com.icia.member.dto.MemberFileDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public void memberSave(MemberDTO memberDTO) {
        sql.insert("Member.save", memberDTO);
    }

    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    public MemberDTO findById(Long id) {
        return sql.selectOne("Member.findById", id);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }

    public void delete(Long id) {
        sql.delete("Member.delete", id);
    }

    public MemberDTO updateForm(Long id) {
        return sql.selectOne("Member.updateForm", id);
    }

    public void update(MemberDTO memberDTO) {
        sql.update("Member.update", memberDTO);
    }

    /*public List<MemberFileDTO> findFile(Long memberId) {
        return sql.selectList("Member.findFile", memberId);
    }*/
}
