package com.icia.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {
    private Long id;
    private String boardTitle;
    private String boardPass;
    private String boardWriter;
    private String boardContents;
    private String boardCreatedDate;
    private int boardHits;
    private int fileAttached;
}
