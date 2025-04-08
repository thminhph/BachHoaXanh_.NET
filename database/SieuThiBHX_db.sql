
create database SieuThiBHX
go

use SieuThiBHX
go

set dateformat dmy;
go

--------------------------CREATE TABLE------------------------
-- 1. Các bảng không phụ thuộc
CREATE TABLE LoaiHang (
	id INT IDENTITY(1,1) NOT NULL,
	maLoaiHang NVARCHAR(100),
	tenLoaiHang NVARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE LoaiNhanVien (
	id INT IDENTITY(1,1) NOT NULL,
	MaLoaiNhanVien VARCHAR(30),
	TenLoaiNhanVien NVARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE TaiKhoan (
	id INT IDENTITY(1,1) NOT NULL,
	MaTaiKhoan VARCHAR(30),
	TenTaiKhoan VARCHAR(100),
	MatKhau VARCHAR(100),
	Quyen INT,
	PRIMARY KEY(id)
);

CREATE TABLE NhaCungCap (
	id INT IDENTITY(1,1) NOT NULL,
	MaNhaCungCap VARCHAR(30),
	TenNhaCungCap NVARCHAR(100),
	SoDienThoai VARCHAR(30),
	DiaChi NVARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE KhuyenMai (
	id INT IDENTITY(1,1) NOT NULL,
	MaKhuyenMai VARCHAR(30),
	TenKhuyenMai NVARCHAR(100),
	GiaTri FLOAT,
	PRIMARY KEY(id)
);

CREATE TABLE ChiNhanh (
	id INT IDENTITY(1,1) NOT NULL,
	MaChiNhanh VARCHAR(30),
	TenChiNhanh NVARCHAR(100),
	DiaChi NVARCHAR(100),
	SoDienThoai VARCHAR(10),
	PRIMARY KEY(id)
);

-- 2. Các bảng có phụ thuộc
CREATE TABLE SanPham (
	id INT IDENTITY(1,1) NOT NULL,
	maSanPham NVARCHAR(30),
	tenSanPham NVARCHAR(100),
	donViTinh NVARCHAR(100),
	donGia FLOAT,
	ngaySanXuat DATETIME,
	hanSuDung DATETIME,
	anhSanPham NVARCHAR(MAX),
	idLoaiHang INT,
	idNhaCungCap INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idLoaiHang) REFERENCES LoaiHang(id),
	FOREIGN KEY (idNhaCungCap) REFERENCES NhaCungCap(id)
);

CREATE TABLE KhoHang (
	id INT IDENTITY(1,1) NOT NULL,
	soLuong INT,
	idSanPham INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idSanPham) REFERENCES SanPham(id)
);

CREATE TABLE KhachHang (
	id INT IDENTITY(1,1) NOT NULL,
	maKhachHang NVARCHAR(30),
	tenKhachHang NVARCHAR(100),
	soDienThoai NVARCHAR(10),
	diem FLOAT,
	PRIMARY KEY(id)
);

CREATE TABLE NhanVien (
	id INT IDENTITY(1,1) NOT NULL,
	MaNhanVien NVARCHAR(30) NOT NULL,
	TenNhanVien NVARCHAR(100),
	SoDienThoai VARCHAR(10),
	DiaChi NVARCHAR(100),
	idLoaiNhanVien INT,
	idTaiKhoan INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idLoaiNhanVien) REFERENCES LoaiNhanVien(id),
	FOREIGN KEY (idTaiKhoan) REFERENCES TaiKhoan(id)
);

CREATE TABLE CaLam (
	id INT IDENTITY(1,1) NOT NULL,
	MaCaLam VARCHAR(30),
	TenCaLam VARCHAR(100),
	GioBatDau NVARCHAR(100),
	GioKetThuc NVARCHAR(100),
	PRIMARY KEY(id)
);

CREATE TABLE LichLam (
	id INT IDENTITY(1,1) NOT NULL,
	MaLichLam NVARCHAR(30) NOT NULL,
	NgayLam DATETIME NULL,
	idNhanVien INT NULL,
	idCaLam INT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (idNhanVien) REFERENCES NhanVien(id),
	FOREIGN KEY (idCaLam) REFERENCES CaLam(id)
);

CREATE TABLE BangLuong (
	id INT IDENTITY(1,1) NOT NULL,
	MaBangLuong VARCHAR(30),
	ThangNam DATETIME NULL,
	TongGioCong FLOAT NULL,
	Luong FLOAT NULL,
	idNhanVien INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idNhanVien) REFERENCES NhanVien(id)
);

CREATE TABLE ChiTietBangLuong (
	id INT IDENTITY(1,1) NOT NULL,
	MaChiTietBangLuong VARCHAR(30),
	SoGioCongThucTe FLOAT NULL,
	NgayLam DATETIME NULL,
	idBangLuong INT,
	idLichLam INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idBangLuong) REFERENCES BangLuong(id),
	FOREIGN KEY (idLichLam) REFERENCES LichLam(id)
);

CREATE TABLE HoaDon (
	id INT IDENTITY(1,1) NOT NULL,
	maHD VARCHAR(50),
	ngayLapHD DATETIME,
	gioLapHD DATETIME,
	tongTien FLOAT,
	thanhTien FLOAT,
	idKhachHang INT,
	idKhuyenMai INT,
	idNhanVien INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idKhachHang) REFERENCES KhachHang(id),
	FOREIGN KEY (idKhuyenMai) REFERENCES KhuyenMai(id),
	FOREIGN KEY (idNhanVien) REFERENCES NhanVien(id)
);

CREATE TABLE ChiTietHoaDon (
	id INT IDENTITY(1,1) NOT NULL,
	soLuong INT,
	idHoaDon INT,
	idSanPham INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idHoaDon) REFERENCES HoaDon(id),
	FOREIGN KEY (idSanPham) REFERENCES SanPham(id)
);

CREATE TABLE PhieuNhap (
	id INT IDENTITY(1,1) NOT NULL,
	MaPhieuNhap VARCHAR(30),
	NgayNhap DATETIME,
	ThanhTien FLOAT,
	idNhanVien INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idNhanVien) REFERENCES NhanVien(id)
);

CREATE TABLE ChiTietPhieuNhap (
	id INT IDENTITY(1,1) NOT NULL,
	SoLuong INT,
	DonGia FLOAT,
	idPhieuNhap INT,
	idSanPham INT,
	PRIMARY KEY(id),
	FOREIGN KEY (idPhieuNhap) REFERENCES PhieuNhap(id),
	FOREIGN KEY (idSanPham) REFERENCES SanPham(id)
);



-- --------ndong------------
-- --calam--
--ALTER TABLE [LichLam]  WITH CHECK ADD  CONSTRAINT [FK_LichLam_CaLam] FOREIGN KEY([idCaLam])
--REFERENCES [CaLam] ([id])
--GO
--ALTER TABLE [LichLam] CHECK CONSTRAINT [FK_LichLam_CaLam]
--GO
--ALTER TABLE [LichLam]  WITH CHECK ADD  CONSTRAINT [FK_LichLam_NhanVien] FOREIGN KEY([idNhanVien])
--REFERENCES [NhanVien] ([id])
--GO
--ALTER TABLE [LichLam] CHECK CONSTRAINT [FK_LichLam_NhanVien]
--GO
-----nhanvien---
--ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([idLoaiNhanVien])
--REFERENCES [LoaiNhanVien] ([id])
--GO
--ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
--GO
--ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([idTaiKhoan])
--REFERENCES [TaiKhoan] ([id])
--GO
--ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
--GO
-----bangluong----
--ALTER TABLE [BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([idNhanVien])
--REFERENCES [NhanVien] ([id])
--GO
--ALTER TABLE [BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
--GO
--ALTER TABLE [ChiTietBangLuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBangLuong_BangLuong] FOREIGN KEY([idBangLuong])
--REFERENCES [BangLuong] ([id])
--GO
--ALTER TABLE [ChiTietBangLuong] CHECK CONSTRAINT [FK_ChiTietBangLuong_BangLuong]
--GO

-------trong----
------------------------FK ChiTietPhieuNhap-------------------------
--ALTER TABLE ChiTietPhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([idPhieuNhap])
--REFERENCES PhieuNhap ([id])
--GO
--ALTER TABLE ChiTietPhieuNhap CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
--GO
--ALTER TABLE ChiTietPhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([idSanPham])
--REFERENCES SanPham ([id])
--GO
--ALTER TABLE ChiTietPhieuNhap CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
--GO

------------------------FK PhieuNHap-------------------------
--ALTER TABLE PhieuNhap  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([idNhanVien])
--REFERENCES NhanVien ([id])
--GO
--ALTER TABLE PhieuNhap CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
--GO



----------------------------SET FK------------------------
--alter table HoaDon with check add constraint [FK_HoaDon_KhachHang] foreign key ([idKhachHang])
--references [KhachHang]([id])
--go
--alter table HoaDon check constraint [FK_HoaDon_KhachHang]
--go

--ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([idKhuyenMai])
--REFERENCES [KhuyenMai] ([id])
--GO
--ALTER TABLE HoaDon CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
--GO

--ALTER TABLE HoaDon  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([idNhanVien])
--REFERENCES [NhanVien] ([id])
--GO
--ALTER TABLE [HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
--GO



--ALTER TABLE ChiTietHoaDon  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([idHoaDon])
--REFERENCES [HoaDon]([id])
--GO
--ALTER TABLE ChiTietHoaDon CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
--GO
--ALTER TABLE ChiTietHoaDon WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([idSanPham])
--REFERENCES [SanPham] ([id])
--GO
--ALTER TABLE [ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
--GO

--ALTER TABLE KhoHang  WITH CHECK ADD  CONSTRAINT [FK_KhoHang_SanPham] FOREIGN KEY([idSanPham])
--REFERENCES [SanPham] ([id])
--GO
--ALTER TABLE [KhoHang] CHECK CONSTRAINT [FK_KhoHang_SanPham]
--GO

--ALTER TABLE [SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([idNhaCungCap])
--REFERENCES [NhaCungCap] ([id])
--GO
--ALTER TABLE [SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
--GO
--ALTER TABLE [SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiHang] FOREIGN KEY([idLoaiHang])
--REFERENCES [LoaiHang] ([id])
--GO
--ALTER TABLE [SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiHang]
--GO



------------DuLieuAo-------------

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


-- LoaiNhanVien
INSERT INTO LoaiNhanVien (MaLoaiNhanVien, TenLoaiNhanVien)  
VALUES  
('LNV1', N'Nhân viên bán hàng'),  
('LNV2', N'Nhân viên kho'),  
('LNV3', N'Quản lý');

-- NhaCungCap
INSERT INTO NhaCungCap (MaNhaCungCap, TenNhaCungCap, SoDienThoai, DiaChi) 
VALUES 
(N'NCC01', N'LG', N'0123456789', N'23/7 Võ Văn Ngân'),
(N'NCC02', N'LeNoVo', N'0123456789', N'7/11 Hoàng Diệu 2'),
(N'NCC03', N'SamSung', N'0123456789', N'50/7 Trần Phú'),
(N'NCC04', N'Dell', N'0123456789', N'16 Đặng Văn Bi'),
(N'NCC05', N'CellsPhone', N'0123456789', N'16/3 Võ Nguyên Giáp'),
(N'NCC06', N'Family Mart', N'0123456789', N'25/16 đường số 25'),
(N'NCC07', N'GS25', N'0123456789', N'29/16 Hiệp Bình'),
(N'NCC08', N'Xiaomi', N'0123456789', N'12/3 D2'),
(N'NCC09', N'Vissan', N'0123456789', N'27 Đường 16'),
(N'NCC10', N'Sạch', N'0123456789', N'2 Đường 21');

-- KhuyenMai
INSERT INTO KhuyenMai (MaKhuyenMai, TenKhuyenMai, GiaTri) VALUES
('KM001', N'Giảm giá 10%', 10),
('KM002', N'Giảm giá 20%', 20),
('KM003', N'Mua 1 tặng 1', 50),
('KM004', N'Giảm giá 15%', 15),
('KM005', N'Giảm giá 30%', 30),
('KM006', N'Khuyến mãi đặc biệt', 40);

-- ChiNhanh
INSERT INTO ChiNhanh (MaChiNhanh, TenChiNhanh, DiaChi, SoDienThoai) VALUES
('CN001', N'Chi nhánh Hà Nội', N'123 Đường A, Hà Nội', '0123456789'),
('CN002', N'Chi nhánh Hồ Chí Minh', N'456 Đường B, TP.HCM', '0987654321'),
('CN003', N'Chi nhánh Đà Nẵng', N'789 Đường C, Đà Nẵng', '0345678912'),
('CN004', N'Chi nhánh Hải Phòng', N'321 Đường D, Hải Phòng', '0567891234'),
('CN005', N'Chi nhánh Cần Thơ', N'654 Đường E, Cần Thơ', '0678912345');

-- CaLam
INSERT INTO CaLam (MaCaLam, TenCaLam, GioBatDau, GioKetThuc)  
VALUES  
('C1', N'Ca sáng', N'07:00', N'12:00'),  
('C2', N'Ca chiều', N'13:00', N'18:00'),  
('C3', N'Ca tối', N'19:00', N'23:00');

INSERT INTO NhanVien (MaNhanVien, TenNhanVien, SoDienThoai, DiaChi, idLoaiNhanVien, idTaiKhoan)  
VALUES  
('NV001', N'Nguyễn Văn A', '0987654321', N'Hà Nội', 1, 1),  
('NV002', N'Trần Thị B', '0971234567', N'Hồ Chí Minh', 2, 2),  
('NV003', N'Phạm Văn C', '0904567890', N'Đà Nẵng', 3, 3),
('NV004', N'Võ Nhựt Đồng', '0987654321', N'Hà Nội', 1, 4),  
('NV005', N'Phạm Thế Minh', '0971234567', N'Hồ Chí Minh', 2, 5),  
('NV006', N'Huỳnh Minh Trọng', '0904567890', N'Đà Nẵng', 3, 6);

INSERT INTO LichLam (MaLichLam, NgayLam, idNhanVien, idCaLam)  
VALUES  
('LL001', '2024-03-10', 1, 1),  
('LL002', '2024-03-10', 2, 2),  
('LL003', '2024-03-10', 3, 3);

INSERT INTO BangLuong (MaBangLuong, ThangNam, TongGioCong, Luong, idNhanVien)  
VALUES  
('BL001', '2024-03-01', 160, 8000000, 1),  
('BL002', '2024-03-01', 150, 7500000, 2),  
('BL003', '2024-03-01', 140, 7000000, 3);

INSERT INTO ChiTietBangLuong (MaChiTietBangLuong, SoGioCongThucTe, NgayLam, idBangLuong, idLichLam)  
VALUES  
('CTBL001', 8, '2024-03-10', 1, 1),  
('CTBL002', 7.5, '2024-03-10', 2, 2),  
('CTBL003', 7, '2024-03-10', 3, 3);
INSERT INTO LoaiHang (maLoaiHang, tenLoaiHang)
VALUES
('LH001', N'Thực phẩm tươi sống'),
('LH002', N'Đồ uống'),
('LH003', N'Hàng gia dụng'),
('LH004', N'Đồ hộp'),
('LH005', N'Mỹ phẩm'),
('LH006', N'Bánh kẹo'),
('LH007', N'Đồ đông lạnh'),
('LH008', N'Sữa và chế phẩm từ sữa'),
('LH009', N'Sản phẩm chăm sóc cá nhân'),
('LH010', N'Hóa phẩm và chất tẩy rửa');

-- HoaDon
INSERT INTO HoaDon (maHD, ngayLapHD, gioLapHD, tongTien, thanhTien, idKhachHang, idKhuyenMai, idNhanVien)
VALUES
('HD001', '2024-03-01', '08:00', 500000, 450000, 1, 1, 1),
('HD002', '2024-03-02', '09:00', 750000, 675000, 2, 2, 2),
('HD003', '2024-03-03', '10:00', 300000, 270000, 3, 3, 3),
('HD004', '2024-03-04', '11:00', 1000000, 850000, 1, 4, 2),
('HD005', '2024-03-05', '12:00', 200000, 180000, 2, 5, 3),
('HD006', '2024-03-06', '13:00', 800000, 640000, 3, 6, 1),
('HD007', '2024-03-07', '14:00', 600000, 510000, 1, 1, 2),
('HD008', '2024-03-08', '15:00', 900000, 810000, 2, 2, 3),
('HD009', '2024-03-09', '16:00', 700000, 595000, 3, 3, 1),
('HD010', '2024-03-10', '17:00', 1000000, 850000, 1, 4, 2);
INSERT INTO KhachHang (maKhachHang, tenKhachHang, soDienThoai, diem) VALUES
('KH001', N'Nguyễn Văn A', '0911111111', 100),
('KH002', N'Trần Thị B', '0922222222', 200),
('KH003', N'Lê Văn C', '0933333333', 150),
('KH004', N'Phạm Thị D', '0944444444', 300),
('KH005', N'Hoàng Văn E', '0955555555', 250),
('KH006', N'Đặng Thị F', '0966666666', 50);
INSERT INTO SanPham (maSanPham, tenSanPham, donViTinh, donGia, ngaySanXuat, hanSuDung, anhSanPham, idLoaiHang, idNhaCungCap)
VALUES
('SP001', N'Sữa tươi Vinamilk', N'Hộp 1L', 25000, '2025-03-01T00:00:00', '2025-09-01T00:00:00', N'sua_vinamilk.jpg', 1, 1),
('SP002', N'Mì tôm Hảo Hảo', N'Gói', 4000, '2025-02-15T00:00:00', '2026-02-15T00:00:00', N'mi_haohao.jpg', 2, 2),
('SP003', N'Coca Cola lon', N'Lon 330ml', 10000, '2025-01-20T00:00:00', '2025-07-20T00:00:00', N'coca.jpg', 3, 3),
('SP004', N'Bánh mì sandwich', N'Túi 500g', 30000, '2025-04-01T00:00:00', '2025-04-10T00:00:00', N'sandwich.jpg', 4, 4),
('SP005', N'Gạo ST25', N'Túi 5kg', 150000, '2025-01-10T00:00:00', '2026-01-10T00:00:00', N'gao_st25.jpg', 5, 1);

-- PhieuNhap
INSERT INTO PhieuNhap (MaPhieuNhap, NgayNhap, ThanhTien, idNhanVien) VALUES
('PN001', '2024-03-01T10:00:00', 500000, 1),
('PN002', '2024-03-05T12:30:00', 750000, 2),
('PN003', '2024-03-10T15:45:00', 1200000, 3),
('PN004', '2024-03-15T09:20:00', 950000, 4),
('PN005', '2024-03-20T14:10:00', 1100000, 5),
('PN006', '2024-03-25T16:50:00', 870000, 6),
('PN007', '2024-03-30T18:30:00', 1340000, 1);


