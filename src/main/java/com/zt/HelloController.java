package com.zt;

/**
 * Created by apple on 2017/6/10.
 */

//http://blog.leanote.com/post/newflydd/JAVA-WEB%E9%A1%B9%E7%9B%AE%E4%B8%AD%E4%BD%BF%E7%94%A8%E5%B9%B6%E6%94%B9%E9%80%A0editor.md%E5%AE%9E%E7%8E%B0Markdown%E7%BC%96%E8%BE%91%E5%99%A8
import com.jfinal.core.Controller;
public class HelloController extends Controller {

    public void index() {
        renderJsp("/MDEditor/editor/editor.jsp");
    }
    public void test(){
        renderJsp("/index.jsp");
    }
}