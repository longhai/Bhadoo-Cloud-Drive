<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>
    <jsp:attribute name="head_area"/>
    <jsp:attribute name="body_area">
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                    <c:choose>
	                        <c:when test='${empty(user)}'>
	                        <p style="font-size: 18px; color: black">Chào mừng bạn đến với Trình tải lên ổ đĩa đám mây</p>
				<p style="font-size: 15px; color: black">Trang web này không có dịch vụ đăng ký hoặc giới hạn người dùng.</p> 
				<p style="font-size: 15px; color: black">Sau khi đăng nhập tài khoản Google Drive của mình, bạn có thể tải bất kỳ tệp nào từ URL của tệp đó lên Tài khoản Google Drive của bạn.</p>
				<p style="font-size: 15px; color: black">Xin lưu ý: Trang web này chỉ hỗ trợ các liên kết trực tiếp.</p>
				<p style="font-size: 15px; color: black">Chúng tôi không lưu bất kỳ dữ liệu nào của bạn và sau khi máy chủ khởi động lại, mã xác thực cũng sẽ bị xóa khỏi cơ sở dữ liệu của chúng tôi.</p><br>
				<link rel='stylesheet' href='https://d33wubrfki0l68.cloudfront.net/css/ba9da532d588c7d5b6cc3fbc52d26da7538064c8/style.css'/>
				<canvas></canvas>
				<script type='text/javascript' src='https://d33wubrfki0l68.cloudfront.net/js/0332cdafb1bac19d815d6030f67ca9bdb56fe27a/script.js'></script>
	                        </c:when>
                        	<c:otherwise>	                         
                        		<p style="font-size: 20px; color: green">Hi, <c:out value="${user.name}" default="Guest" />. </p>   
	                            <p style="font-size: 15px; color: green; word-wrap:break-word">Xin chúc mừng! Bạn đã được xác thực thành công bằng tài khoản Google của mình: <c:out value="${user.email}"/>. </p>
                                 <button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/new_upload'">
                                     Nhấp vào đây để tải tệp lên Drive của bạn.
                                 </button><br>
					
	                        </c:otherwise>
	                    </c:choose>
                    </div>
                </div>
            </div>
        </section>
    </jsp:attribute>
</ui:templete>
