<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <title>Personal Blog</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/MDEditor/editor/css/style.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/MDEditor/css/editormd.min.css"/>
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="http://www.bootcss.com/p/layoutit/css/bootstrap-combined.min.css">
</head>
<body>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">

            <%--顶部header--%>
            <div class="alert">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <h4>
                    提示!
                </h4> <strong>警告!</strong> 请注意你的个人隐私安全.
            </div>
            <%--导航栏开始--%>
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span
                                class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                        <a href="#" class="brand">个人博客</a>
                        <div class="nav-collapse collapse navbar-responsive-collapse">
                            <ul class="nav">
                                <li class="active">
                                    <a href="#">主页</a>
                                </li>
                                <li>
                                    <a href="#">已发表文章</a>
                                </li>
                                <li>
                                    <a href="#">链接</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong
                                            class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">下拉导航1</a>
                                        </li>
                                        <li>
                                            <a href="#">下拉导航2</a>
                                        </li>
                                        <li>
                                            <a href="#">其他</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li class="nav-header">
                                            标签
                                        </li>
                                        <li>
                                            <a href="#">链接1</a>
                                        </li>
                                        <li>
                                            <a href="#">链接2</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav pull-right">
                                <li>
                                    <a href="#">右边链接</a>
                                </li>
                                <li class="divider-vertical">
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong
                                            class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">下拉导航1</a>
                                        </li>
                                        <li>
                                            <a href="#">下拉导航2</a>
                                        </li>
                                        <li>
                                            <a href="#">其他</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li>
                                            <a href="#">链接3</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>

            </div>
            <%--导航栏结束--%>
            <div class="row-fluid">

                <div class="span2">
                    <ul class="nav nav-list">
                        <li class="nav-header">
                            博客系统
                        </li>
                        <li class="active">
                            <a href="#">发表文章</a>
                        </li>
                        <li>
                            <a href="#">已发表</a>
                        </li>
                        <li>
                            <a href="#">应用</a>
                        </li>
                        <li class="nav-header">
                            功能列表
                        </li>
                        <li>
                            <a href="#">资料</a>
                        </li>
                        <li>
                            <a href="#">设置</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="#">帮助</a>
                        </li>
                    </ul>
                </div>
                <%--右侧开始--%>
                <div class="span8">
<%--表单开始--%>
                    <form class="form-horizontal" action="/save1" method="post">
                        <fieldset>
                            <div id="legend" class="">
                                <input type="text" placeholder="输入一个标题呗" class="input-xxlarge" name="title">
                            </div>
                            <%--MD编辑器开始--%>
                            <div id="layout">
                                <div id="test-editormd">
 <textarea style="display:none;">[TOC]
#### Disabled options

- TeX (Based on KaTeX);
- Emoji;
- Task lists;
- HTML tags decode;
- Flowchart and Sequence Diagram;

#### Editor.md directory

    editor.md/
            lib/
            css/
            scss/
            tests/
            fonts/
            images/
            plugins/
            examples/
            languages/
            editormd.js
            ...

```html
&lt;!-- English --&gt;
&lt;script src="../dist/js/languages/en.js"&gt;&lt;/script&gt;

&lt;!-- 繁體中文 --&gt;
&lt;script src="../dist/js/languages/zh-tw.js"&gt;&lt;/script&gt;
```
</textarea>
                                </div>
                            </div>
                            <script src="<%=request.getContextPath()%>/MDEditor/editor/js/jquery.min.js"></script>
                            <script src="<%=request.getContextPath()%>/MDEditor/editor/js/editormd.min.js"></script>

                            <script type="text/javascript">
                                var testEditor;
                                $(function () {
                                    testEditor = editormd("test-editormd", {
                                        width: "90%",
                                        height: '80%',
                                        syncScrolling: "single",
                                        path: "<%=request.getContextPath()%>/MDEditor/lib/",
                                        previewTheme: "dark"
                                    });
                                });

                                var blogcontent = testEditor.getPreviewedHTML();// 获取预览窗口里的 HTML，在开启 watch 且没有开启 saveHTMLToTextarea 时使用


                            </script>

                            <%--Md编辑器结束--%>

                            <input type="hidden" name="htmlCode" value="<script>blogcontent</script>">
                            <div class="control-group">
                                <label class="control-label"></label>

                                <!-- Button -->
                                <div class="controls">
                                    <button class="btn btn-success">保存</button>
                                </div>
                            </div>

                        </fieldset>

                    </form>
<%--表单结束--%>
                </div>
            </div>

            <%--底部footer--%>
            <div class="alert">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <h4>
                    提示!
                </h4> <strong>警告!</strong> 版权所有@zhoutao
            </div>
        </div>
    </div>
</div>


</body>
</html>