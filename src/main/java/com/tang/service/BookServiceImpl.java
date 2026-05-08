package com.tang.service;

import com.tang.dao.BookMapper;
import com.tang.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ProjectName: ssmbuild
 * @Package: com.tang.service
 * @ClassName: BookServiceImpl
 * @Author: tmj
 * @Description: TODO
 * @Date: 2026/5/8 14:30
 * @Version: 1.0
 */
//@Service
public class BookServiceImpl implements BookService {
    // 调用dao层
//    @Autowired
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
