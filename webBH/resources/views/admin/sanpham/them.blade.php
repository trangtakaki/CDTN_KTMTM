@extends(admin.layout.index)
@section('content')

<!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại Sản phẩm
                            <small>Thêm</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="" method="POST">
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input class="form-control" name="txtTen" placeholder="Nhập tên sản phẩm" />
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <input class="form-control" name="txtTen" placeholder="Nhập tên loại sản phẩm" />
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input class="form-control" name="txtMota" placeholder="Nhập mô tả cho sản phẩm" />
                            </div>
                            <div class="form-group">
                                <label>Đơn giá</label>
                                <input class="form-control" name="txtGia" placeholder="Nhập giá sản phẩm" />
                            </div>

                            <div class="form-group">
                                <label>Giá khuyến mại</label>
                                <input class="form-control" name="txtGiaKM" placeholder="Nhập giá khuyến mại sản phẩm" />
                            </div>
                            
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="fImages">
                            </div>

                            <div class="form-group">
                                <label>Đơn vị</label>
                                <input class="form-control" name="txtDonVi" placeholder="Nhập đơn vị" />
                            </div>

                            <div class="form-group">
                                <label>Sản phẩm mới</label>
                                <input class="form-control" name="txtSPmoi" placeholder="Nhập sản phẩm mới " />
                            </div>
                            
                            <button type="submit" class="btn btn-default">Thêm loại SP</button>
                            <button type="reset" class="btn btn-default">Làm lại</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    @endsection