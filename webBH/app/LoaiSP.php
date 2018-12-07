<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoaiSP extends Model
{
    protected $table = "loaisp";

    public function product(){
    	return $this->hasMany('App/SanPham','ma_LoaiSP','ma_LoaiSP');
    }

}
