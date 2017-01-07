<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/8/2016
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div id="login-box" class="row">
        <div class="col-lg-4 col-md-4 col-sm-6 col-lg-offset-4 col-md-offset-4 col-sm-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>Log in with Username and Password</h4>
                </div>
                <div class="panel-body">


                    <c:if test="${not empty msg}"  >
                        <div class="msg"> ${msg}</div>
                    </c:if>



                    <form class="login-container" name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                        <c:if test="${not empty error}">
                            <div class="error" style="color: red">
                                    ${error}
                            </div>
                        </c:if>
                        <div class="form-group">
                            <label for="username">User </label>
                            <input type="text" id="username" name="username" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input class="form-control" id="password" name="password" />
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Submit" class="btn btn-primary" />
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>



<%@include file="/WEB-INF/view/template/footer.jsp"%>