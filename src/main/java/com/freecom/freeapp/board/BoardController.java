package com.freecom.freeapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

    @Autowired
    BoardService boardService;

    @RequestMapping(value="/board/list", method= RequestMethod.GET)
    public String boardlist(Model model){
        model.addAttribute("list",boardService.getBoardList());
        return "list";
    }

    @RequestMapping(value="board/detail/{id}",method=RequestMethod.GET)
    public String contentDetail(Model model,@PathVariable("id") int id){
        model.addAttribute("detail",boardService.getBoard(id));
        return "detail";
    }
}
