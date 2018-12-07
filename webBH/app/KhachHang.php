<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KhachHang extends Model
{
    protected $table = "khachhang";

    public function bill(){
    	return $this->hasMany('App/HoaDon','ma_KH','ma_KH');
    }
}
