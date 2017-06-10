package com.zt;

/**
 * Created by apple on 2017/6/10.
 */
import com.jfinal.core.Controller;
public class HelloController extends Controller {

    public void index() {
        renderText("Hello JFinal World.");
    }
    public void test(){
        render("/index.jsp");
    }
}