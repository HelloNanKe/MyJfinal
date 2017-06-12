package com.zt;

/**
 * Created by apple on 2017/6/10.
 */
import com.jfinal.core.Controller;
public class HelloController extends Controller {

    public void index() {
        renderJsp("/MDEditor/editor/editor.jsp");
    }
    public void test(){
        render("/index.jsp");
    }
}