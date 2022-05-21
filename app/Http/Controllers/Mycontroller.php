<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sanpham;
use App\taikhoan;
use App\giohang;
use App\dondathang;
use App\chitietdondathang;
use App\danhgia;


class Mycontroller extends Controller
{
    public function updatedonhang(Request $request){
        $table=dondathang::where('id','=',$request->iddonhang)->update(['trinhtrang'=>'Đang Vận Chuyển']);
        if($table){
            echo "succes";
        }
    }
    public function getdataAlldonhangAdmin(){
        $table=dondathang::orderBy('id','desc')->get();
        echo json_encode($table);
    }
    public function getdatadanhgia(Request $request){ 
        if($request->has('masanpham')){
            $masanpham=$request->masanpham;
            $table=danhgia::where('Id_SanPham','=',$masanpham)->get();
            echo json_encode($table);
        }
    }
    public function postDanhgia(Request $request){
        if($request->has('username')&&$request->has('id_sanpham')&&$request->has('ngaydanhgia')&&$request->has('namsao')&&$request->has('bonsao')&&$request->has('basao')&&$request->has('haisao')&&$request->has('motsao')){
                $username=$request->username;
                $id_sanpham=$request->id_sanpham;
                $ngaydanhgia=$request->ngaydanhgia;
                $namsao=$request->namsao;
                $bonsao=$request->bonsao;
                $basao=$request->basao;
                $haisao=$request->haisao;
                $motsao=$request->motsao;
                $comment=$request->comment;

               $table=danhgia::where([['username','=',$username],['Id_SanPham','=',$id_sanpham]])->count();
                
               // echo $table;
                if($table){
                    echo "Faid";
                }else{
                    $table=new danhgia;
                    $table->namsao=$namsao;
                    $table->bonsao=$bonsao;
                    $table->basao=$basao;
                    $table->haisao=$haisao;
                    $table->motsao=$motsao;
                    $table->NgayDanhGia=$ngaydanhgia;
                    $table->username=$username;
                    $table->Id_SanPham=$id_sanpham;
                    $table->ComMent=$comment;
                    $table->save();
                    echo "sussces";
                }
            }else{
                echo "khong lay dc du lieu";
            }
    }
    public function getdatadonhang(Request $request){
        if($request->has("idusser")){
            $idusser=$request->idusser;
            $table=dondathang::where('idtaikhoan',$idusser)->get();
            echo json_encode($table);
        }
    }
    public function updatethongtintaikhoan(Request $request){
        if($request->has("iduser") && $request->has("username") && $request->has("password") && $request->has("diachi") && $request->has("email") && $request->has("sodienthoai") ){
            $iduser=$request->iduser;
            $username=$request->username;
            $password=$request->password;
            $diachi=$request->diachi;
            $email=$request->email;
            $sodienthoai=$request->sodienthoai;
            $table=taikhoan::where('id_user','=',$iduser)->update(['password'=>$password,'username'=>$username,'so_dien_thoai'=>$sodienthoai,'email'=>$email,'dia_chi'=>$diachi]);
            if($table){
                echo "thanhcong";
            }
        }
    }
    public function updatehinhanh(Request $request){
        if($request->has("hinhanh") && $request->has("username")){
            $hinhanh=$request->hinhanh;
            $username=$request->username;
            $tentam="img/$username.jpg";
            $data=file_put_contents($tentam, base64_decode($hinhanh));
            if($data){
               $table=taikhoan::where("username",$username)->update(['hinhanh'=>$tentam]);
               echo "thanh cong";
            }
        }
    }
    public function getAlldatadonhang(Request $request){
        if($request->has("iddondathang")){
            $id=$request->iddondathang;
            $data=dondathang::join("chitietdonhang","dondathang.id",'=','chitietdonhang.iddondathang')->where("dondathang.id",'=',$id)->get();
            echo json_encode($data);
        }
    }
    public function postthanhtoan(Request $request){
        if($request->has("idtaikhoan") && $request->has("tentaikhoan") && $request->has("email") && $request->has("diachi") && $request->has("sodienthoai") ){
            $idtaikhoan=$request->idtaikhoan;
            $tentaikhoan=$request->tentaikhoan;
            $email=$request->email;
            $diachi=$request->diachi;
            $sodienthoai=$request->sodienthoai;
            $date = getdate();
            $ngayhientai=$date['mday']."/".$date['mon']."/".$date['year'];
            $trinhtrang="Chờ Xét Duyệt";
            // echo $idtaikhoan."<br>";
            // echo $tentaikhoan."<br>";
            // echo $email."<br>";
            // echo $diachi."<br>";
            // echo $sodienthoai."<br>";
            // echo $ngayhientai."<br>";
            $dondathang=new dondathang();
            $dondathang->tentaikhoan=$tentaikhoan;
            $dondathang->email=$email;
            $dondathang->diachi=$diachi;
            $dondathang->sodienthoai=$sodienthoai;
            $dondathang->ngaydat=$ngayhientai;
            $dondathang->trinhtrang=$trinhtrang;
            $dondathang->idtaikhoan=$idtaikhoan;
            $dondathang->save();
            $iddondathang=dondathang::max('id');

            $giohang=giohang::where('idtaikhoan',$idtaikhoan)->get();
            $data=json_decode($giohang,true);
            foreach ($data as $value ) {
                $idsanpham=$value["idsanpham"];
                $tensp=$value["tensp"];
                $hinhsp=$value["hinhsp"];
                $soluong=$value["soluong"];
                $gia=$value["gia"];
                $chitietdonhang=new chitietdondathang();
                $chitietdonhang->masanpham=$idsanpham;
                $chitietdonhang->tensanpham=$tensp;
                $chitietdonhang->soluongsanpham=$soluong;
                $chitietdonhang->giasanpham=$gia;
                $chitietdonhang->hinhanhsanpham=$hinhsp;
                $chitietdonhang->iddondathang=$iddondathang;
                $chitietdonhang->save();
            }
             $giohang=giohang::where('idtaikhoan',$idtaikhoan)->delete();
             echo $iddondathang;
           
        }
    }
    public function tienhanhthanhtoan(Request $request){
        if($request->has("username") && $request->has("email") && $request->has("diachi") && $request->has("sdt")){
            $username=$request->username;
            $email=$request->email;
            $diachi=$request->diachi;
            $sdt=$request->sdt;
            echo "username";
             echo "email";
              echo "diachi";
               echo "sdt";
        }
    }
    public function huawei(){
    	$table=sanpham::where('IDSP','=',4)->take(4)->get();
    	echo json_encode($table);
    }
    public function timkim(Request $request){
        if($request->has('timkim')){
            $timkim=$request->timkim;
            $table=sanpham::where('TenSP','like','%'.$timkim.'%')->get();
            echo json_encode($table);
        }
    }
    public function xiaomi(){
    	$table=sanpham::where('IDSP','=',5)->take(4)->get();
    	echo json_encode($table);
    }
    public function realme(){
    	$table=sanpham::where('IDSP','=',6)->take(4)->get();
    	echo json_encode($table);
    }
    public function vivo(){
    	$table=sanpham::where('IDSP','=',7)->take(4)->get();
    	echo json_encode($table);
    }
     public function sony(){
    	$table=sanpham::where('IDSP','=',8)->take(4)->get();
    	echo json_encode($table);
    }
    public function sanpham(Request $request){
    	$id=$request->id;
    	$table=sanpham::where('IDSP','=',$id)->get();
    	echo json_encode($table);
    }
     public function dangnhap(Request $request){
    	//$id=$request->id;
    	$username=$request->username;
    	$password=$request->pass;
    	$table=taikhoan::where([['username','=',$username],['password','=',$password]])->get();
    	echo json_encode($table);
    }
    public function themvaogiohang(Request $request){
    	$idsp=$request->idsp;
    	$iduser=$request->iduser;
    	$table=sanpham::where('ID','=',$idsp)->first();
    	$Tensp=$table->TenSP;
    	$gia=$table->GiaSP;
    	$hinh=$table->HinhAnhSP;
    	$kiemtracotrunggiohang=giohang::where([['idsanpham','=',$idsp],['idtaikhoan','=',$iduser]])->count();
    	if($kiemtracotrunggiohang>0){
    		$laysoluong_thanhtien_giohang=giohang::select('soluong','gia')->where('idsanpham','=',$idsp)->first();
    		$soluong=$laysoluong_thanhtien_giohang->soluong;
    		$gia=$laysoluong_thanhtien_giohang->gia;
    		$soluongmoi=$soluong+1;
    		$giamoi=($gia*$soluongmoi)/$soluong;
    		$updategiohang=giohang::where('idsanpham','=',$idsp)->update(['soluong'=>$soluongmoi,'gia'=>$giamoi]);
            echo "string";
    	}else{
    		$insertgiohang=new giohang();
    		$insertgiohang->idsanpham=$idsp;
    		$insertgiohang->idtaikhoan=$iduser;
    		$insertgiohang->tensp=$Tensp;
    		$insertgiohang->hinhsp=$hinh;
    		$insertgiohang->soluong=1;
    		$insertgiohang->gia=$gia;
    		$insertgiohang->save();
    		 echo "Insert";
    	}
    }
    public function getdatagiohang(Request $request){
        $iduser=$request->iduser;
        $table=giohang::where('idtaikhoan','=',$iduser)->get();
        echo json_encode($table);
    }
    public function deletegiohang(Request $request){
        if($request->has("idgiohang")){
            $idgiohang=$request->idgiohang;
            $table=giohang::where('idgiohang',$idgiohang)->delete();
            if($table){
                echo "thanh cong";
            }
        }
    }
    public function tang(Request $request){
        if($request->has("idgiohang")){
            $idgiohang=$request->idgiohang;
            $table=giohang::where('idgiohang',$idgiohang)->first();
            $soluong=$table->soluong;
            $giacu=$table->gia;
            $soluongmoi=$soluong+1;
            $giamoi=($giacu*$soluongmoi)/$soluong;
            $table=giohang::where('idgiohang',$idgiohang)->update(['soluong'=>$soluongmoi,'gia'=>$giamoi]);
            echo "thanh cong";

        }
    }
    public function giam(Request $request){
        if($request->has("idgiohang")){
            $idgiohang=$request->idgiohang;
            $table=giohang::where('idgiohang',$idgiohang)->first();
            $soluong=$table->soluong;
            $giacu=$table->gia;
            $soluongmoi=$soluong-1;
            
            $giamoi=($giacu*$soluongmoi)/$soluong;
            $table=giohang::where('idgiohang',$idgiohang)->update(['soluong'=>$soluongmoi,'gia'=>$giamoi]);
            echo "thanh cong";

        }
    }
    public function getdatataikhoan(){
        $table=taikhoan::all();
        echo json_encode($table);
    }
    public function dangkytaikhoan(Request $request){
        if($request->has('text_UserName') && $request->has('text_PassWord') && $request->has('text_PhoneNumBer') && $request->has('text_Email') && $request->has('text_Adress') ){
            $text_UserName=$request->text_UserName;
            $text_PassWord=$request->text_PassWord;
            $text_PhoneNumBer=$request->text_PhoneNumBer;
            $text_Email=$request->text_Email;
            $text_Adress=$request->text_Adress;
            $table=new taikhoan();
            $table->username=$text_UserName;
            $table->password=$text_PassWord;
            $table->so_dien_thoai=$text_PhoneNumBer;
            $table->email=$text_Email;
            $table->dia_chi=$text_Adress;
            $table->loai=$request->loai;
            $table->hinhanh="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s";
            $table->save();
            if($table){
                echo "thanh cong";
            }
        }
    }

    public function DeleteAdminTai_khoan(Request $request){
    if($request->has("idtaikhoan")){
        $idTaikhoan=$request->idtaikhoan;
        $table=taikhoan::where('Id','=',$idTaikhoan)->delete();
        if($table){
            echo "thanh cong";
        }
    }
} 

     public function insert_ProductAdmin(Request $request){
        if($request->has('TenSP') && $request->has('GiaSP') && $request->has('NgayGiamGia') && $request->has('GiamGia') && $request->has('HinhAnhSP') && $request->has('MoTaSP') && $request->has('IDSP') ){
         
             $TenSP = $request->TenSP;
            $GiaSP = $request->GiaSP;
            $NgayGiamGia = $request->NgayGiamGia;
            $GiamGia = $request->GiamGia;
            $HinhAnhSP = $request->HinhAnhSP;
            $MoTaSP = $request->MoTaSP;
            $IDSP = $request->IDSP;

              $date = getdate();
              $tensanpham=$date['seconds'].$date['minutes'].$date['hours']; 

             $thumuc="img/sanpham/$tensanpham.news.jpg";
             $data=file_put_contents($thumuc, base64_decode($HinhAnhSP));
             $duongdanhinhanhsanpham=$tensanpham.'.news.jpg';

            
             $table=new sanpham();
             $table->TenSP=$TenSP;
             $table->GiaSP=$GiaSP;
             $table->NgayGiamGia=$NgayGiamGia;
             $table->GiamGia=$GiamGia;
             $table->HinhAnhSP=$duongdanhinhanhsanpham;
             $table->MoTaSP =$MoTaSP;
             $table->IDSP=$IDSP;
             $table->save();
             if($table){
                echo "Success";
             }else{
                echo "Faild";
             }

        }
}

// Admin Delete Tai Khoan
public function DeleteAdminTaikhoan(Request $request){
    if($request->has("idtaikhoan")){
        $idTaikhoan=$request->idtaikhoan;
        $table=taikhoan::where('Id','=',$idTaikhoan)->delete();
        if($table){
            echo "thanh cong";
        }
    }
}  

// Admin Delete Don Hang
public function DeleteDonHang(Request $request){
    if($request->has("iddondathang")){
        $iddondathang=$request->iddondathang;
        $table=dondathang::where('id','=',$iddondathang)->delete();
        if($table){
            echo "thanh cong";
        }
    }
}

public function getAllSanPham(){
   $table = sanpham::get();
   echo json_encode($table);
}

// Admin Delete Don Hang
public function deleteSanPham(Request $request){
    if($request->has("idSanPham")){
        $idSanPham=$request->idSanPham;
        $table=sanpham::where('ID','=',$idSanPham)->delete();
        if($table){
            echo "thanh cong";
        }
    }
}

public function getTrangThaiDonHangDangVanChuyen(Request $request){
    $table = dondathang::where('trinhtrang','Đang Vận Chuyển')->get();
    echo json_encode($table);
}

 public function updatedonhangHoanThanh(Request $request){
        $table=dondathang::where('id','=',$request->iddonhang)->update(['trinhtrang'=>'Đã Giao']);
        if($table){
            echo "succes";
        }
    }

 // public function updatedonhang(Request $request){
 //        $table=dondathang::where('id','=',$request->iddonhang)->update(['trinhtrang'=>'Đang Vận Chuyển']);
 //        if($table){
 //            echo "succes";
 //        }
 //    }
}
