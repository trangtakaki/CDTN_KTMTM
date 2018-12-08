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
                                <label>Tên Loại sản phẩm</label>
                                <input class="form-control" name="txtTen" placeholder="Nhập tên loại sản phẩm" />
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input class="form-control" name="txtMota" placeholder="Nhập mô tả cho loại sản phẩm" />
                            </div>
                            
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="fImages">
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