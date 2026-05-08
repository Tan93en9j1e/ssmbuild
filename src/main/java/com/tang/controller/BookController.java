package com.tang.controller;

import com.tang.pojo.Books;
import com.tang.service.BookService;
import com.tang.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @ProjectName: ssmbuild
 * @Package: com.tang.controller
 * @ClassName: BookController
 * @Author: tmj
 * @Description: TODO
 * @Date: 2026/5/8 15:28
 * @Version: 1.0
 */
@Controller
@RequestMapping("/book")
public class BookController {
    //controller调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService=new BookServiceImpl();

    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }


}
