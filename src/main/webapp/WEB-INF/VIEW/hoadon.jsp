<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/16/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh sách hóa đơn</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Thông tin hóa đơn
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>ID Hóa đơn</th>
                                    <th>Khách hàng đặt</th>
                                    <th>Số lượng</th>
                                    <th>Giá</th>
                                    <th>Ngày tạo đơn</th>
                                    <th>Địa chỉ</th>
                                    <th>Tình trạng</th>
                                    <th>Tổng tiền</th>
                                    <th colspan="2">Tác vụ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${viewhd}" var="view">
                                    <tr class="odd gradeX">
                                        <td>${view.idHoaDon}</td>
                                        <td>${view.idKhachHang.user}</td>
                                        <td>${view.soLuong}</td>
                                        <td>${view.gia}</td>
                                        <td>${view.dateDatHang}</td>
                                        <td>${view.diaChi}</td>
                                        <td>${view.tinhTrang}</td>
                                        <td>${view.tongTien}</td>
                                        <td><a href="<c:url value="/admin/deleteHoadon/${comment.idComment}"/>" onclick="return confirm('bạn có chắc chắn không? ');">delete</a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /.container-fluid -->
</div>



