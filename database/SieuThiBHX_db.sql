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

 --------ndong------------
 --calam--
ALTER TABLE [LichLam]  WITH CHECK ADD  CONSTRAINT [FK_LichLam_CaLam] FOREIGN KEY([idCaLam])
REFERENCES [CaLam] ([id])
GO
ALTER TABLE [LichLam] CHECK CONSTRAINT [FK_LichLam_CaLam]
GO
ALTER TABLE [LichLam]  WITH CHECK ADD  CONSTRAINT [FK_LichLam_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [NhanVien] ([id])
GO
ALTER TABLE [LichLam] CHECK CONSTRAINT [FK_LichLam_NhanVien]
GO
---nhanvien---
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([idLoaiNhanVien])
REFERENCES [LoaiNhanVien] ([id])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [TaiKhoan] ([id])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
---bangluong----
ALTER TABLE [BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [NhanVien] ([id])
GO
ALTER TABLE [BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
GO
ALTER TABLE [ChiTietBangLuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBangLuong_BangLuong] FOREIGN KEY([idBangLuong])
REFERENCES [BangLuong] ([id])
GO
ALTER TABLE [ChiTietBangLuong] CHECK CONSTRAINT [FK_ChiTietBangLuong_BangLuong]
GO

-----trong----
----------------------FK ChiTietPhieuNhap-------------------------
ALTER TABLE ChiTietPhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([idPhieuNhap])
REFERENCES PhieuNhap ([id])
GO
ALTER TABLE ChiTietPhieuNhap CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE ChiTietPhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([idSanPham])
REFERENCES SanPham ([id])
GO
ALTER TABLE ChiTietPhieuNhap CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO

----------------------FK PhieuNHap-------------------------
ALTER TABLE PhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES NhanVien ([id])
GO
ALTER TABLE PhieuNhap CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO


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

-------DuLieu--------
----ndong-----
INSERT INTO CaLam (MaCaLam, TenCaLam, GioBatDau, GioKetThuc)  
VALUES  
('C1', N'Ca sáng', N'07:00', N'12:00'),  
('C2', N'Ca chiều', N'13:00', N'18:00'),  
('C3', N'Ca tối', N'19:00', N'23:00');
go
INSERT INTO LoaiNhanVien (MaLoaiNhanVien, TenLoaiNhanVien)  
VALUES  
('LNV1', N'Nhân viên bán hàng'),  
('LNV2', N'Nhân viên kho'),  
('LNV3', N'Quản lý');
go
INSERT INTO NhanVien (MaNhanVien, TenNhanVien, SoDienThoai, DiaChi, idLoaiNhanVien, idTaiKhoan)  
VALUES  
('NV001', N'Nguyễn Văn A', '0987654321', N'Hà Nội', 1, 1),  
('NV002', N'Trần Thị B', '0971234567', N'Hồ Chí Minh', 2, 2),  
('NV003', N'Phạm Văn C', '0904567890', N'Đà Nẵng', 3, 3),
('NV004', N'Võ Nhựt Đồng', '0987654321', N'Hà Nội', 1, 1),  
('NV005', N'Phạm Thế Minh', '0971234567', N'Hồ Chí Minh', 2, 2),  
('NV006', N'Huỳnh Minh Trọng', '0904567890', N'Đà Nẵng', 3, 3);

go
INSERT INTO LichLam (MaLichLam, NgayLam, idNhanVien, idCaLam)  
VALUES  
('LL001', '2024-03-10', 1, 1),  
('LL002', '2024-03-10', 2, 2),  
('LL003', '2024-03-10', 3, 3);
go
INSERT INTO BangLuong (MaBangLuong, ThangNam, TongGioCong, Luong, idNhanVien)  
VALUES  
('BL001', '2024-03-01', 160, 8000000, 1),  
('BL002', '2024-03-01', 150, 7500000, 2),  
('BL003', '2024-03-01', 140, 7000000, 3);
go
INSERT INTO ChiTietBangLuong (MaChiTietBangLuong, SoGioCongThucTe, NgayLam, idBangLuong, idLichLam)  
VALUES  
('CTBL001', 8, '2024-03-10', 1, 1),  
('CTBL002', 7.5, '2024-03-10', 2, 2),  
('CTBL003', 7, '2024-03-10', 3, 3);
go




