

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



------------DuLieuAo-------------
DELETE FROM TaiKhoan;

SET IDENTITY_INSERT TaiKhoan ON;

INSERT INTO TaiKhoan (id, MaTaiKhoan, TenTaiKhoan, MatKhau, Quyen)
VALUES 
    (1, N'admin', N'admin', N'123456', 0),
    (2, N'user', N'user', N'123456', 1),
    (3, N'TK001', N'TK001', N'123456', 1),
    (4, N'TK002', N'TK002', N'123456', 1),
    (5, N'TK003', N'TK003', N'123456', 1),
    (6, N'TK004', N'TK004', N'123456', 1),
    (7, N'TK005', N'TK005', N'123456', 1),
    (8, N'TK006', N'TK006', N'123456', 1),
    (9, N'TK007', N'TK007', N'123456', 1),
    (10, N'TK008', N'TK008', N'123456', 1),
    (11, N'TK009', N'TK009', N'123456', 1),
    (12, N'TK010', N'TK010', N'123456', 1);

SET IDENTITY_INSERT TaiKhoan OFF;



INSERT INTO NhaCungCap (MaNhaCungCap, TenNhaCungCap, SoDienThoai, DiaChi) 
VALUES 
(N'NCC01', N'LG', N'0123456789', N'23/7 Võ Văn Ngân'),
(N'NCC02', N'LeNoVo', N'0123456789', N'7/11 Hoàng Diệu 2'),
(N'NCC03', N'SamSung', N'0123456789', N'50/7 Trần Phú'),
(N'NCC04', N'Dell', N'0123456789', N'16 Đặng Văn Bi'),
(N'NCC05', N'CellsPhone', N'0123456789', N'16/3 Võ Nguên Giáp'),
(N'NCC06', N'Family Mart', N'0123456789', N'25/16 đường số 25'),
(N'NCC07', N'GS25', N'0123456789', N'29/16 Hiệp Bình'),
(N'NCC08', N'Xiaomi', N'0123456789', N'12/3 D2'),
(N'NCC09', N'Vissan', N'0123456789', N'27 Đường 16'),
(N'NCC10', N'Sạch', N'0123456789', N'2 Đường 21');


-- Thêm dữ liệu vào bảng PhieuNhap
INSERT INTO PhieuNhap (MaPhieuNhap, NgayNhap, ThanhTien, idNhanVien) VALUES
('PN001', '2024-03-01 10:00:00', 500000, 1),
('PN002', '2024-03-05 12:30:00', 750000, 2),
('PN003', '2024-03-10 15:45:00', 1200000, 3),
('PN004', '2024-03-15 09:20:00', 950000, 4),
('PN005', '2024-03-20 14:10:00', 1100000, 5),
('PN006', '2024-03-25 16:50:00', 870000, 6),
('PN007', '2024-03-30 18:30:00', 1340000, 7);

-- Thêm dữ liệu vào bảng ChiTietPhieuNhap
INSERT INTO ChiTietPhieuNhap (SoLuong, DonGia, idPhieuNhap, idSanPham) VALUES
(10, 50000, 1, 101),
(5, 100000, 1, 102),
(8, 75000, 2, 103),
(12, 60000, 3, 104),
(20, 55000, 4, 105),
(15, 65000, 5, 106),
(25, 70000, 6, 107),
(18, 80000, 7, 108);

-- Thêm dữ liệu vào bảng KhuyenMai
INSERT INTO KhuyenMai (MaKhuyenMai, TenKhuyenMai, GiaTri) VALUES
('KM001', N'Giảm giá 10%', 10),
('KM002', N'Giảm giá 20%', 20),
('KM003', N'Mua 1 tặng 1', 50),
('KM004', N'Giảm giá 15%', 15),
('KM005', N'Giảm giá 30%', 30),
('KM006', N'Khuyến mãi đặc biệt', 40);

-- Thêm dữ liệu vào bảng ChiNhanh
INSERT INTO ChiNhanh (MaChiNhanh, TenChiNhanh, DiaChi, SoDienThoai) VALUES
('CN001', N'Chi nhánh Hà Nội', N'123 Đường A, Hà Nội', '0123456789'),
('CN002', N'Chi nhánh Hồ Chí Minh', N'456 Đường B, TP.HCM', '0987654321'),
('CN003', N'Chi nhánh Đà Nẵng', N'789 Đường C, Đà Nẵng', '0345678912'),
('CN004', N'Chi nhánh Hải Phòng', N'321 Đường D, Hải Phòng', '0567891234'),
('CN005', N'Chi nhánh Cần Thơ', N'654 Đường E, Cần Thơ', '0678912345');

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





