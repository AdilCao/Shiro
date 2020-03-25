<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../base.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <base href="${ctx}/">
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- 页面meta /-->
    <link rel="stylesheet" href="plugins/ztree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="plugins/ztree/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="plugins/ztree/js/jquery.ztree.core-3.5.js"></script>
    <script type="text/javascript" src="plugins/ztree/js/jquery.ztree.excheck-3.5.js"></script>

    <SCRIPT type="text/javascript">
        <!--
        var setting = {
            check: {
                enable: true
            },
            data: {
                simpleData: {
                    enable: true
                }
            }
        };

        /*
        * [
            { id:11, pId:1, name:"随意勾选 1-1", open:true},
            { id:111, pId:11, name:"随意勾选 1-1-1"},
            { id:112, pId:11, name:"随意勾选 1-1-2"},
            { id:12, pId:1, name:"随意勾选 1-2", open:true},
            { id:121, pId:12, name:"随意勾选 1-2-1"},
            { id:122, pId:12, name:"随意勾选 1-2-2"},
            { id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
            { id:21, pId:2, name:"随意勾选 2-1"},
            { id:22, pId:2, name:"随意勾选 2-2", open:true},
            { id:221, pId:22, name:"随意勾选 2-2-1", checked:true},
            { id:222, pId:22, name:"随意勾选 2-2-2"},
            { id:23, pId:2, name:"随意勾选 2-3"},
            { id:1, pId:0, name:"随意勾选 1", open:true},
            { id:100 , pId : 122 , name:"新加的菜单" },
            { id:10000 , pId : 20000 , name:"随意勾选3" }
        ];
        *
        * */
        /*树结构的数据应该从数据库中获得 动态构建*/
        var zNodes =[];

        var code;
        var treeObj ;

        //由于我们需要的是json数据 所以 希望在页面加载成功以后 访问服务器 得到 json数据
        //使用ajax访问
        $(document).ready(function(){
            $.get("/system/role/initTree.do?roleid=${role.id}", function(data){
                //alert("Data Loaded: " + data);
                zNodes = data;
                //初始化树结构
                treeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
                //展开所有的节点
                treeObj.expandAll(true);
            });
        });
        //-->
        //保存
        function submitCheckedNodes(){
            //1.获得树中的已选择的节点 将这些数据放入 moduleIds
            //1.1 获得节点数据
            var nodes = treeObj.getCheckedNodes(true);
            //alert(nodes)

            // <input type="hidden" id="moduleIds" name="moduleIds" value=""/>
            var moduleIds = "";
            for(var i = 0 ; i < nodes.length ;  i ++){
                //console.log( nodes[i].id );
                moduleIds += nodes[i].id + ",";
                //如果是最后一次循环 不加,
            }
            if(moduleIds.length > 0 ){ //有值 才截取
                //console.log(moduleIds);
                //直接截取字符串
                //参数1: 表示从哪里开始截取
                //参数2: 截取到哪个位置结束
                moduleIds = moduleIds.substr(0,moduleIds.length-1);
                //console.log(moduleIds);
            }

            //1.2 赋值
            document.getElementById("moduleIds").value=moduleIds;


            //2.找到表单提交
            //document.getElementById("icform").submit();
            //$("#icform").submit();
            //整个html页面中 可以允许有多个表单
            //document 表示整个文档对象 forms获得所有的表单对象 [0] 表示索引值
            document.forms[0].submit();
        }
    </SCRIPT>
</head>

<body style="overflow: visible;">
<div id="frameContent" class="content-wrapper" style="margin-left:0px;height: 1200px" >
    <section class="content-header">
        <h1>
            菜单管理
            <small>菜单列表</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!-- .box-body -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">角色 [${role.name}] 权限列表</h3>
            </div>

            <div class="box-body">

                <!-- 数据表格 -->
                <div class="table-box">
                    <!--工具栏-->
                    <div class="box-tools text-left">
                        <button type="button" class="btn bg-maroon" onclick="submitCheckedNodes();">保存</button>
                        <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                    </div>
                    <!--工具栏/-->
                    <!-- 树菜单 -->
                    <form id="icform" name="icform" method="post" action="/system/role/updateRoleModule.do">
                        <input type="hidden" name="roleid" value="${role.id}"/>

                        <input type="hidden" id="moduleIds" name="moduleIds" value=""/>
                        <div class="content_wrap">
                            <div class="zTreeDemoBackground left" style="overflow: visible">
                                <ul id="treeDemo" class="ztree"></ul>
                            </div>
                        </div>

                    </form>
                    <!-- 树菜单 /-->

                </div>
                <!-- /数据表格 -->

            </div>
            <!-- /.box-body -->
        </div>
    </section>
</div>
</body>
</html>