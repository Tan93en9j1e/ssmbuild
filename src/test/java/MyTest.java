import com.tang.pojo.Books;
import com.tang.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @ProjectName: ssmbuild
 * @Package: PACKAGE_NAME
 * @ClassName: MyTest
 * @Author: tmj
 * @Description: TODO
 * @Date: 2026/5/8 17:14
 * @Version: 1.0
 */
public class MyTest {
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService = (BookService) context.getBean("BookServiceImpl");
        for (Books books : bookService.queryAllBook()) {
            System.out.println(books);
        }
    }
}
