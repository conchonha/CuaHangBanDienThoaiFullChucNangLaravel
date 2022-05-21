<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    //Tạo liên kết tới bản quảng cáo
    protected $table="sanpham";
    //tắt bật chế độ tự động quản lý 'created' và 'update at'
    public $timestamps=false;
}
