package com.tang.dao;

import com.tang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @ProjectName: ssmbuild
 * @Package: com.tang.dao
 * @ClassName: BookMapper
 * @Author: tmj
 * @Description: TODO
 * @Date: 2026/5/8 14:11
 * @Version: 1.0
 */
public interface BookMapper {
    //增删改查
    int addBook(Books books);

    int deleteBookById(@Param("bookId") int id);

    int updateBook(Books books);

    Books queryBookById(@Param("bookId") int id);

    List<Books> queryAllBook();
}
