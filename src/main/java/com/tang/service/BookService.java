package com.tang.service;

import com.tang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @ProjectName: ssmbuild
 * @Package: com.tang.service
 * @ClassName: BookService
 * @Author: tmj
 * @Description: TODO
 * @Date: 2026/5/8 14:29
 * @Version: 1.0
 */
public interface BookService {

    int addBook(Books books);

    int deleteBookById(int id);

    int updateBook(Books books);

    Books queryBookById(int id);

    List<Books> queryAllBook();
}
