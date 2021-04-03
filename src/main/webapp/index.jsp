<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
//   session.setAttribute("pagesize",10);
%>
<html>
<head>
    <title>员工修改</title>
    <script type="text/javascript" src="${ctp}/static/js/jquery.min.js"></script>
    <%--引入样式--%>
    <link href="${ctp}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>
<body>
<h1>页面被添加了东西</h1>
<div class="modal fade" id="changepagemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">changepage</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">changepage</label>
                        <div class="col-sm-2">
                            <input type="text" name="changepage" class="form-control" id="changepageid" placeholder="changepage">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">close</button>
                <button type="button" class="btn btn-primary" id="changepageupdate">update</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="empupdatebtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">员工修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <%--<div class="form-group">--%>
                        <%--<label  class="col-sm-2 control-label">id</label>--%>
                        <%--<div class="col-sm-2">--%>
                            <%--<input type="text" name="email" class="form-control" id="update_empnameid" placeholder="email">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">empname</label>
                        <div class="col-sm-2">
                            <p class="form-control-static" id="update_empname"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">gender</label>
                        <div class="col-sm-10">
                        </div>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="gender_update_M" value="M"> M
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="gender_update_F" value="F"> F
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="gender_update__m" value="m"> m
                        </label>
                        <%--<label class="radio-inline">--%>
                            <%--<input type="radio" name="gender" id="gender_update__F" value="F"> F--%>
                        <%--</label>--%>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" class="form-control" id="emp_update_email" placeholder="email">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">deptName</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="dId" id="bbbbbb">

                                <%--<option>${depts.deptName}</option>--%>
                                <%--<option>jsa</option>--%>
                            </select>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">close</button>
                <button type="button" class="btn btn-primary" id="update_emp">update</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="empaddbtn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">empname</label>
                        <div class="col-sm-10">
                            <input type="text" name="empName" class="form-control" id="empname_add" placeholder="empname">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">gender</label>
                        <div class="col-sm-10">
                        </div>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="gender_id_M" value="M" checked="checked"> M
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="gender" id="gender_id_F" value="F"> F
                        </label>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" class="form-control" id="emp_email" placeholder="email">
                            <span  class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">deptName</label>
                        <div class="col-sm-5">
                            <select class="form-control" name="dId" id="ccccc">

                                    <%--<option>${depts.deptName}</option>--%>
                                <%--<option>jsa</option>--%>
                            </select>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="save_emp">Save</button>
            </div>
        </div>
    </div>
</div>


<%--显示页面--%>
<div class="container">
    <%--标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1>CRUD</h1>
        </div>
    </div>
    <%--按钮--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="emp_add_btn">add</button>
            <button class="btn btn-danger " id="delete_all_btn">deleteall</button>
            <button class="btn btn-danger " id="changepagebtn">changebtnpage</button>
        </div>
    </div>
    <%--表格数据--%>
    <div class="row">
        <table class="table table-hover" id="table_emp">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" id="check_all">
                </th>
                <th>#</th>
                <th>empName</th>
                <th>gender</th>
                <th>email</th>
                <th>deptName</th>
                <th>operation</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <%--显示分页--%>
    <div class="row" >
        <div class="col-md-6" id="page_info"></div>
        <div class="col-md-6" id="page_nav"></div>
    </div>
</div>

<script type="text/javascript">
    var totalnum;
    var currentpage;
    // var pagesize
    // var t;
      $(function () {
          to_page(1);
    });
    $("#changepagebtn").click(function(){

        $("#changepagemodel").modal({
            backdrop:'static'
        });
        //alert($("#changepageid").val());
        <%--$.ajax({--%>
            <%--url:"${ctp}/ses",--%>
            <%--type:"POST",--%>
            <%--data:"",--%>
            <%--success:function () {--%>

            <%--}--%>
        <%--})--%>
    });


    $("#changepageupdate").click(function () {
           $.ajax({
               url:"${ctp}/ses",
               type:"POST",
               data:"pn="+$("#changepageid").val(),
               success:function (result) {
                   $("#changepagemodel").modal("hide");
                   alert("ok,flash");


               }
           });

    })
    function to_page(id) {
        $.ajax({
            url:"${ctp}/emps",
            data:"id="+id+"&pagesize=${sessionScope.pagesize}",
            type:"GET",
            success:function (result) {
                build_emp(result);
                pagehelp(result);
                page(result);
            }
        });
    };
    function build_emp(result) {
        $("#table_emp tbody").empty();
        var emps=result.map.pageInfo.list;
        $.each(emps,function (index,emp) {
           var checkbox=$("<td></td>").append($("<input type='checkbox' class='check_item'/>"))
           var empid=$("<td></td>").append(emp.empId);
            var empName=$("<td></td>").append(emp.empName);
            var gender=$("<td></td>").append(emp.gender);
            var email=$("<td></td>").append(emp.email);
            var deptname=$("<td></td>").append(emp.department.deptName);
            var editbtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn").append($("<span></span>").
            addClass("glyphicon glyphicon-pencil")).append("edit");
            editbtn.attr("edit_id",emp.empId);
            var deletebtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn").append($("<span></span>")
                .addClass("glyphicon glyphicon-trash")).append("delete");
            deletebtn.attr("delete_id",emp.empId);
            var btn=$("<td></td>").append(editbtn).append(" ").append(deletebtn);
            $("<tr></tr>").append(checkbox).append(empid).append(empName)
                .append(gender).append(email).append(deptname).append(btn).appendTo("#table_emp tbody")
        });
    }

    function pagehelp(result) {
        totalnum=result.map.pageInfo.total;
        currentpage=result.map.pageInfo.pageNum;
        $("#page_info").empty();
        $("#page_info").append("current:"+" "+result.map.pageInfo.pageNum+" "+"total:"+result.map.pageInfo.pages+" "+"totalnum:"+result.map.pageInfo.total);
    }
    function page(result) {

        $("#page_nav").empty();
        var ul=$("<ul></ul>").addClass("pagination");
        var firstpage=$("<li></li>").append($("<a></a>").append("first").attr("href","#"));
        var prepage=$("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.map.pageInfo.hasPreviousPage==false){
            firstpage.addClass("disabled");
            prepage.addClass("disabled");
        }
        var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;"));
        var finalpage=$("<li></li>").append($("<a></a>").append("final").attr("href","#"));
        if(result.map.pageInfo.hasNextPage==false){
            nextpage.addClass("disabled");
            finalpage.addClass("disabled");
        }
        if(result.map.pageInfo.pageNum!=1){
            firstpage.click(function () {
                to_page(1);
            });
            prepage.click(function () {
                to_page(result.map.pageInfo.pageNum-1);
            });
        };
        if(result.map.pageInfo.pageNum!=result.map.pageInfo.pages){
            nextpage.click(function () {
                to_page(result.map.pageInfo.pageNum+1);
            });
            finalpage.click(function () {
                to_page(result.map.pageInfo.pages);
            });
        };

        ul.append(firstpage).append(prepage);
        $.each(result.map.pageInfo.navigatepageNums,function (index, i) {

            var ni=$("<li></li>").append($("<a></a>").append(i));
            if(result.map.pageInfo.pageNum==i){
                ni.addClass("active");
            }else{
                ni.click(function () {
                    to_page(i);
                });
            }
            ul.append(ni);
        });
        ul.append(nextpage).append(finalpage);

        var nav=$("<nav></nav>").append(ul);

        nav.appendTo("#page_nav");
    }
      $("#emp_add_btn").click(function () {
        $("#empaddbtn form")[0].reset();
        $("#empaddbtn").find("*").removeClass("has-error","has-success");
        $("#empaddbtn").find(".help-block").text("");
        getdepts("#ccccc");

        $("#empaddbtn").modal({
            backdrop:'static'
        });
    });
    function getdepts(ele) {
        $(ele).empty();
        $.ajax({
            url:"${ctp}/depts",
            type:"POST",
            success:function (result) {
                $.each(result.map.depts,function () {
                    var option=$("<option></option>").append(this.deptName).attr("value",this.deptId);
                    option.appendTo(ele);
                })
            }
            }
        )
    }
    $("#empname_add").change(function () {
        $.ajax({
            url:"${ctp}/checkuser",
            data:"username="+$("#empname_add").val(),
            type:"GET",
            success:function (result) {
                if(result.code==100){
                    $("#empname_add").parent().addClass("has-error");
                    $("#empname_add").next("span").text(result.map.va);
                    $("#save_emp").attr("Ajax-va","success");

                }else{
                    $("#empname_add").next("span").text("username be used");
                    $("#save_emp").attr("Ajax-va","error");
                }
            }
        });
    });
    function validata_add_form(){
        var empname=$("#empname_add").val();
        var check=/^[a-zA-Z0-9_-]{6,16}$/;
        if(!check.test(empname)){
            //alert("username is unvaild");
            //$("#empname_add").parent().removeClass("has-error");
            //$("#empname_add").next("span").text("");
            $("#empname_add").parent().addClass("has-error");
            $("#empname_add").next("span").text("username is unvaild");
            return false;
        }else{
            $("#empname_add").parent().removeClass("has-error");
            $("#empname_add").parent().addClass("has-success");
            $("#empname_add").next("span").text("");
        }
        var email=$("#emp_email").val();
        var checkem=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        if(!checkem.test(email)){
            //alert("email is unvaild");
            //$("#emp_email").parent().removeClass("has-error");
            // $("#emp_email").next("span").text("");
             $("#emp_email").parent().addClass("has-error");
            $("#emp_email").next("span").text("email  is unvaild")
            return false;
        }else{
            $("#emp_email").parent().removeClass("has-error");
            $("#emp_email").parent().addClass("has-success");
            $("#emp_email").next("span").text("");
        }
        return true;
    }

      $("#save_emp").click(function () {

       // if(!checkname($("#empname_add").val())){
       //    return false;
       //   };
          //check data
          // if(!validata_add_form()){
          //    return false;
          // };
         if($(this).attr("Ajax-va")=="error"){
              return false;
          }

          //alert($("#empaddbtn form").serialize());
          $.ajax({
              url:"${ctp}/emp",
              type:"POST",
              data:$("#empaddbtn form").serialize(),
              success:function (result) {
                    //alert(result.msg);

                  if(result.code==100){
                      $("#empaddbtn").modal('hide');

                      to_page(totalnum);
                  }else{
                     if(result.map.errors.email==undefined){
                         $("#empname_add").parent().addClass("has-error");
                         $("#empname_add").next("span").text("username  is unvaild");
                     }
                      if(result.map.errors.empName==undefined){
                          $("#emp_email").parent().addClass("has-error");
                          $("#emp_email").next("span").text("email  is unvaild");
                      }
                  }

              }
          });
      });
    $(document).on("click",".edit_btn",function () {
        getdepts("#bbbbbb");
        // alert($(this).parents("tr").find("td:eq(1)").text());
         getemp($(this).attr("edit_id"));
         $("#update_emp").attr("emp_id",$(this).attr("edit_id"));
        $("#empupdatebtn").modal({
            backdrop:'static'
        });
        // $("#update_empnameid").text($(this).parents("tr").find("td:eq(0)").text());
        //
        // $("#update_empname").text($(this).parents("tr").find("td:eq(1)").text());
        // $("#empupdatebtn input[type=radio]").val([$(this).parents("tr").find("td:eq(2)").text()]);
        // $("#emp_update_email").val($(this).parents("tr").find("td:eq(3)").text());
        //$("#empupdatebtn select").val(["2"]);
        //alert("edit");
    });
    function getemp(id) {
        $.ajax({
            url:"${ctp}/emp/"+id,
            type:"GET",
            // data:"id="+id,
            success:function (result) {
                //console.log(result)
                var empDate=result.map.employee;
                //$("#update_empname").text(empDate.empName);
                //alert(empDate.empName);
                //alert(empDate)
                //$("#emp_update_email").append(empDate.email);
                $("#update_empname").text(empDate.empName);
                $("#emp_update_email").val(empDate.email);
                $("#empupdatebtn input[type=radio]").val([empDate.gender]);
                $("#empupdatebtn select").val([empDate.dId]);
            }
        })
    };
    $("#update_emp").click(function () {
        var email=$("#emp_update_email").val();
        var checkem=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
        if(!checkem.test(email)){
            $("#emp_email").parent().addClass("has-error");
            $("#emp_email").next("span").text("email  is unvaild")
            return false;
        }else{
            $("#emp_email").parent().removeClass("has-error");
            $("#emp_email").parent().addClass("has-success");
            $("#emp_email").next("span").text("");
        }
      $.ajax({
         url:"${ctp}/emp/"+$("#update_emp").attr("emp_id"),
          type:"PUT",
          data:$("#empupdatebtn form").serialize(),
          success:function (result) {
              //alert("ok");
              $("#empupdatebtn").modal("hide");
              to_page(currentpage);
          }
      });
    });
    $(document).on("click",".delete_btn",function () {
        var empname=$(this).parents("tr").find("td:eq(2)").text();
        var id=$(this).attr("delete_id");
          if(confirm("delete"+empname+"?")){
                $.ajax({
                   url:"${ctp}/emp/"+id,
                   type:"DELETE",
                    success:function (result) {
                        alert(result.msg);
                        to_page(currentpage);
                    }
                });
          }
        //alert("edit");
    });
    $("#check_all").click(function () {
       if($(this).prop("checked")){
           $(".check_item").prop("checked",true);
       }else{
           $(".check_item").prop("checked",false);
       }
    });
    $(document).on("click",".check_item",function () {
        if($(".check_item:checked").length==$(".check_item").length){
            $("#check_all").prop("checked",true);
        }else{
            $("#check_all").prop("checked",false);
        }
    });
    $("#delete_all_btn").click(function () {
        var names="";
        var ids="";
        $.each($(".check_item:checked"),function () {
             var name=$(this).parents("tr").find("td:eq(2)").text();
             var id= $(this).parents("tr").find("td:eq(1)").text();
             names += name+",";
             ids += id+"-";
        });
        ids=ids.substring(0,ids.length-1);
        //alert(ids)
       if(confirm("delete "+names+" ?")){
           $.ajax({
               url:"${ctp}/emp/"+ids,
               type:"DELETE",
               success:function (result) {
                   alert(result.msg);
                   to_page(currentpage);
                   $("#check_all").prop("checked",false);
               }
           });
       }
    });
</script>
</body>
</html>
