<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HoaDon extends Model
{
    protected $table = "hoadon";

    public function bill_detail(){
    	return $this->hasMany('App/HoaDonChiTiet','ma_HD','ma_HD');
    }

    public function bill(){
    	return $this->belongsTo('App/KhachHang','ma_KH','ma_KH');
    }

}
