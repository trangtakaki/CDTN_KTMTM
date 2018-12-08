 
@extends('admin.layout.index')
@section('content')
 <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại sản phẩm
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>Mã Loại</th>
                                <th>Tên sản phẩm</th>
                                <th>Loại sản phẩm</th>
                                <th>Mô tả</th>
                                <th>Đơn giá</th>
                                <th>Giá khuyến mại</th>
                                <th>Ảnh</th>
                                <th>Đơn vị</th>
                                <th>Delete</th>
                                <th>Mới</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="odd gradeX" align="center">
                                <td>1</td>
                                <td>Đồng hồ A</td>
                                <td>Đồng hồ nam</td>
                                <td>none</td>
                                <td>1100000</td>
                                <td>0</td>
                                <td>Hiện</td>
                                <td>VND</td>
                                <td>1</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="#"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="#">Edit</a></td>
                            </tr>
                            <tr class="even gradeC" align="center">
                                <td>2</td>
                                <td>Đồng hồ B</td>
                                <td>Đồng hồ nữ</td>
                                <td>none</td>
                                <td>2100000</td>
                                <td>1990000</td>
                                <td>Hiện</td>
                                <td>VND</td>
                                <td>1</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="#"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="#">Edit</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    @endsection