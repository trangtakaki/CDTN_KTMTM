<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HoaDonChiTiet extends Model
{
    protected $table = "hoadonchitiet";

    public function product(){
    	return $this->belongsTo('App/SanPham','ma_LoaiSP','ma_LoaiSP');
    }

    public function bill(){
    	return $this->belongsTo('App/HoaDon','ma_HD','ma_HD');
    }
}
