create database SieuThiBHX
go 

use SieuThiBHX
go

set dateformat dmy;

go
 
 create table CaLam(
 id int identity(1,1) not null,
 MaCaLam varchar (30) ,
 TenCaLam varchar (100),
 GioBatDau nvarchar (100),
 GioKetThuc nvarchar (100)
 primary key (MaCaLam) );

 go

 create table LichLam(
 id int identity(1,1) not null,
 MaLichLam nvarchar (30) not null,
 NgayLam datetime null,
 idNhanVien int null,
 idCaLam int null
 primary key (MaLichLam));

 go
 create table NhanVien(
 id int identity(1,1) not null,
 MaNhanVien nvarchar (30) not null,
 TenNhanVien nvarchar(100),
 SoDienThoai varchar(10),
 DiaChi nvarchar(100),
 idLoaiNhanVien int,
 idTaiKhoan int
 primary key (MaNhanVien));

 go
 
 create table LoaiNhanVien(
 id int identity(1,1) not null,
 MaLoaiNhanVien varchar(30),
 TenLoaiNhanVien nvarchar(100),
  primary key (MaLoaiNhanVien));

  go

  create table BangLuong(
   id int identity(1,1) not null,
   MaBangLuong varchar(30),
   ThangNam datetime null,
   TongGioCong float null,
   Luong float null,
   idNhanVien int
   primary key (MaBangLuong));
   
   go

   create table ChiTietBangLuong(
	id int identity(1,1) not null,
	MaChiTietBangLuong varchar(30),
	SoGioCongThucTe float null,
	NgayLam datetime null,
	idBangLuong int ,
	idLichLam int
	   primary key (MaChiTietBangLuong));







