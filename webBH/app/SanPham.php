<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SanPham extends Model
{
    protected $table = "sanpham";

    public function product_type(){
    	return $this->belongsTo('App/LoaiSP','ma_LoaiSP','ma_LoaiSP');
    }

    public function bill_detail(){
    	return $this->hasMany('App/HoaDonChiTiet','ma_SP','ma_SP');
    }
}
