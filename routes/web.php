<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::post('model/donhang/updatedonhang', 'Mycontroller@updatedonhang')->name('updatedonhang');


Route::get('model/donhang/getdataAlldonhangAdmin', 'Mycontroller@getdataAlldonhangAdmin')->name('getdataAlldonhangAdmin');
Route::post('model/taikhoan/dangkytaikhoan', 'Mycontroller@dangkytaikhoan')->name('dangkytaikhoan');
Route::get('model/taikhoan/getdatataikhoan','Mycontroller@getdatataikhoan')->name('getdatataikhoan');
Route::post('model/sanpham/timkim', 'Mycontroller@timkim')->name('timkim');
Route::post('model/danhgia/getdanhgia', 'Mycontroller@getdatadanhgia')->name('getdatadanhgia');
Route::post('model/danhgia/postDanhgia', 'Mycontroller@postDanhgia')->name('postDanhgia');
Route::get('model/sanpham/xiaomi','Mycontroller@xiaomi')->name('xiaomi');
Route::get('model/sanpham/huawei','Mycontroller@huawei')->name('huawei');
Route::get('model/sanpham/realme','Mycontroller@realme')->name('realme');
Route::get('model/sanpham/vivo','Mycontroller@vivo')->name('vivo');
Route::get('model/sanpham/sony','Mycontroller@sony')->name('sony');
Route::post('model/sanpham/sanpham','Mycontroller@sanpham')->name('sanpham');
Route::post('model/taikhoan/dangnhap','Mycontroller@dangnhap')->name('dangnhap');
Route::post('model/giohang/themvaogiohang','Mycontroller@themvaogiohang')->name('themvaogiohang');
Route::post('model/giohang/getdatagiohang','Mycontroller@getdatagiohang')->name('getdatagiohang');
Route::post('model/giohang/deletegiohang','Mycontroller@deletegiohang')->name('deletegiohang');
Route::post('model/giohang/tang','Mycontroller@tang')->name('tang');
Route::post('model/giohang/giam','Mycontroller@giam')->name('giam');
Route::post('model/thanhtoan/tienhanhthanhtoan','Mycontroller@tienhanhthanhtoan')->name('tienhanhthanhtoan');
Route::post('model/giohang/postthanhtoan','Mycontroller@postthanhtoan')->name('postthanhtoan');
Route::post('model/dondathang/getAlldatadonhang','Mycontroller@getAlldatadonhang')->name('getAlldatadonhang');
Route::post('model/taikhoan/updatehinhanh','Mycontroller@updatehinhanh')->name('updatehinhanh');
Route::post('model/taikhoan/updatethongtintaikhoan','Mycontroller@updatethongtintaikhoan')->name('updatethongtintaikhoan');
Route::post('model/donhang/getdatadonhang','Mycontroller@getdatadonhang')->name('getdatadonhang');
Route::post('model/sanpham/insert_sanpham','Mycontroller@insert_ProductAdmin');
Route::post('model/taikhoan/delete','Mycontroller@DeleteAdminTaikhoan');
Route::post('model/dondathang/delete','Mycontroller@DeleteDonHang');
Route::get('model/sanpham/getAllSanPham','Mycontroller@getAllSanPham');
Route::post('model/sanpham/delete','Mycontroller@deleteSanPham');
Route::get('model/dondathang/getTrangThaiDonHangDangVanChuyen','Mycontroller@getTrangThaiDonHangDangVanChuyen');
Route::post('model/dondathang/updatedonhangHoanThanh','Mycontroller@updatedonhangHoanThanh');

Route::get('view', function () {
    return view('login');
});
