

create database SieuThiBHX
go 
 
use SieuThiBHX
go

set dateformat dmy;
go

--------------------------CREATE TABLE------------------------
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
 
 create table CaLam(
 id int identity(1,1) not null,
 MaCaLam varchar (30) ,
 TenCaLam varchar (100),
 GioBatDau nvarchar (100),
 GioKetThuc nvarchar (100)
 primary key (id) );

 create table LichLam(
 id int identity(1,1) not null,
 MaLichLam nvarchar (30) not null,
 NgayLam datetime null,
 idNhanVien int null,
 idCaLam int null
 primary key (id));


 create table NhanVien(
 id int identity(1,1) not null,
 MaNhanVien nvarchar (30) not null,
 TenNhanVien nvarchar(100),
 SoDienThoai varchar(10),
 DiaChi nvarchar(100),
 idLoaiNhanVien int,
 idTaiKhoan int
 primary key (id));
 
 create table LoaiNhanVien(
 id int identity(1,1) not null,
 MaLoaiNhanVien varchar(30),
 TenLoaiNhanVien nvarchar(100),
  primary key (id));

  create table BangLuong(
   id int identity(1,1) not null,
   MaBangLuong varchar(30),
   ThangNam datetime null,
   TongGioCong float null,
   Luong float null,
   idNhanVien int
   primary key (id));

   create table ChiTietBangLuong(
	id int identity(1,1) not null,
	MaChiTietBangLuong varchar(30),
	SoGioCongThucTe float null,
	NgayLam datetime null,
	idBangLuong int ,
	idLichLam int
	primary key (id));

create table TaiKhoan (
 id int IDENTITY (1,1) NOT NULL,
 MaTaiKhoan varchar (30),
 TenTaiKhoan varchar (100),
 MatKhau varchar (100),
 Quyen int,
 primary key (id)
 );

 create table NhaCungCap(
 id int IDENTITY (1,1) NOT NULL,
 MaNhaCungCap varchar (30),
 TenNhaCungCap nvarchar (100),
 SoDienThoai varchar (30),
 DiaChi nvarchar(100),
 primary key (id)
 );

 create table PhieuNhap(
 id int IDENTITY (1,1) NOT NULL,
 MaPhieuNhap varchar (30),
 NgayNhap datetime,
 ThanhTien float,
 idNhanVien int,
 primary key (id)
 );

 create table ChiTietPhieuNhap(
 id int IDENTITY (1,1) NOT NULL,
 SoLuong int,
 DonGia float,
 idPhieuNhap int,
 idSanPham int,
 primary key (id)
 );

 create table KhuyenMai(
  id int IDENTITY (1,1) NOT NULL,
  MaKhuyenMai varchar (30),
  TenKhuyenMai nvarchar (100),
  GiaTri float,
  primary key (id)
 );

 create table ChiNhanh(
  id int IDENTITY (1,1) NOT NULL,
  MaChiNhanh varchar(30),
  TenChiNhanh nvarchar(100),
  DiaChi nvarchar (100),
  SoDienThoai varchar(10),
  primary key (id)
 );
 go

--------------------------SET FK------------------------
alter table HoaDon with check add constraint [FK_HoaDon_KhachHang] foreign key ([idKhachHang])
references [KhachHang]([id])
go
alter table HoaDon check constraint [FK_HoaDon_KhachHang]
go

ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([idKhuyenMai])
REFERENCES [KhuyenMai] ([id])
GO
ALTER TABLE HoaDon CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO

ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [NhanVien] ([id])
GO
ALTER TABLE [HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO

ALTER TABLE ChiTietHoaDon  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([idHoaDon])
REFERENCES [HoaDon]([id])
GO
ALTER TABLE ChiTietHoaDon CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE ChiTietHoaDon WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([idSanPham])
REFERENCES [SanPham] ([id])
GO
ALTER TABLE [ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO

ALTER TABLE KhoHang  WITH CHECK ADD  CONSTRAINT [FK_KhoHang_SanPham] FOREIGN KEY([idSanPham])
REFERENCES [SanPham] ([id])
GO
ALTER TABLE [KhoHang] CHECK CONSTRAINT [FK_KhoHang_SanPham]
GO

ALTER TABLE [SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([idNhaCungCap])
REFERENCES [NhaCungCap] ([id])
GO
ALTER TABLE [SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiHang] FOREIGN KEY([idLoaiHang])
REFERENCES [LoaiHang] ([id])
GO
ALTER TABLE [SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiHang]
GO
