package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.dto.MemberFileDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public void memberSave(MemberDTO memberDTO) {
       memberRepository.memberSave(memberDTO);
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }

    public boolean login(MemberDTO memberDTO) {
        MemberDTO dto = memberRepository.login(memberDTO);
        if (dto != null){
            return true;
        } else {
            return false;
        }
    }

    public void delete(Long id) {
        memberRepository.delete(id);
    }

    public MemberDTO updateForm(Long id) {
        return memberRepository.updateForm(id);
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.update(memberDTO);
    }

    /*public List<MemberFileDTO> findFile(Long id) {
        return memberRepository.findFile(id);
    }*/
}
