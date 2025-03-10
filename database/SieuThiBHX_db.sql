create database SieuThiBHX
go 

use SieuThiBHX
go

set dateformat dmy;
go

create table HoaDon(
	id int identity(1,1) not null,
	maHD varchar(50),
	ngayLapHD datetime,
	gioLapHD datetime,
	tongTien float,
	thanhTien float,
	idKhachHang int,
	idKhuyenMai int,
	idNhanVien int,
	primary key (id)
);
create table ChiTietHoaDon(
	id int identity(1,1) not null,
	soLuong int,
	idHoaDon int ,
	idSanPham int,	
	primary key (id)
);
create table KhoHang(
	id int identity(1,1) not null,
	soLuong int,
	idSanPham int, 
	primary key (id)
);
create table LoaiHang(
	id int identity(1,1) not null,
	maLoaiHang nvarchar (100),
	tenLoaiHang nvarchar (100),
	primary key(id)
);
create table KhachHang(
	id int identity(1,1) not null,
	maKhachHang nvarchar (30),
	tenKhachHang nvarchar (100),
	soDienThoai nvarchar(10),
	diem float (30)
	primary key (id)
);
create table SanPham(
	id int identity(1,1) not null,
	maSanPham nvarchar(30),
	tenSanPham nvarchar(100),
	donViTinh nvarchar(100),
	donGia float,
	ngaySanXuat datetime,
	hanSuDung datetime,
	anhSanPham nvarchar(max),
	idLoaiHang int,
	idNhaCungCap int,
	primary key(id)
);

