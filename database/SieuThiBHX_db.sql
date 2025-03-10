create database SieuThiBHX
go 

use SieuThiBHX
go

set dateformat dmy;
go

create table TaiKhoan (
 id int IDENTITY (1,1) NOT NULL,
 MaTaiKhoan varchar (30),
 TenTaiKhoan varchar (100),
 MatKhau varchar (100),
 Quyen int ,	

 primary key (id)
 );
 go

 create table NhaCungCap(
 id int IDENTITY (1,1) NOT NULL,
 MaNhaCungCap varchar (30),
 TenNhaCungCap nvarchar (100),
 SoDienThoai varchar (30),
 DiaChi nvarchar(100),

 primary key (id)
 );
 go

 create table PhieuNhap(
 id int IDENTITY (1,1) NOT NULL,
 MaPhieuNhap varchar (30),
 NgayNhap datetime,
 ThanhTien float,
 idNhanVien int,

 primary key (id)
 );
 go

 create table ChiTietPhieuNhap(
 id int IDENTITY (1,1) NOT NULL,
 SoLuong int,
 DonGia float,
 idPhieuNhap int,
 idSanPham int,

 primary key (id)
 );
 go

 create table KhuyenMai(
  id int IDENTITY (1,1) NOT NULL,
  MaKhuyenMai varchar (30),
  TenKhuyenMai nvarchar (100),
  GiaTri float,

  primary key (id)
 );
 go

 create table ChiNhanh(
  id int IDENTITY (1,1) NOT NULL,
  MaChiNhanh varchar(30),
  TenChiNhanh nvarchar(100),
  DiaChi nvarchar (100),
  SoDienThoai varchar(10),

  primary key (id)
 );
 go
