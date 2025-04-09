namespace SieuThiBHX.Trong
{
    partial class frmKhuyenMai
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnThoat = new System.Windows.Forms.ToolStripButton();
            this.btnSua = new System.Windows.Forms.ToolStripButton();
            this.btnXoa = new System.Windows.Forms.ToolStripButton();
            this.btnThem = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.btnLamMoi = new System.Windows.Forms.ToolStripButton();
            this.gbDSKM = new Guna.UI2.WinForms.Guna2GroupBox();
            this.dgvKM = new Guna.UI2.WinForms.Guna2DataGridView();
            this.gbCTPN = new Guna.UI2.WinForms.Guna2GroupBox();
            this.txtTenKhuyenMai = new Guna.UI2.WinForms.Guna2TextBox();
            this.guna2HtmlLabel1 = new Guna.UI2.WinForms.Guna2HtmlLabel();
            this.guna2HtmlLabel2 = new Guna.UI2.WinForms.Guna2HtmlLabel();
            this.txtGiaTri = new Guna.UI2.WinForms.Guna2TextBox();
            this.toolStrip1.SuspendLayout();
            this.gbDSKM.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKM)).BeginInit();
            this.gbCTPN.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnThoat
            // 
            this.btnThoat.Image = global::SieuThiBHX.Properties.Resources.logout;
            this.btnThoat.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(96, 36);
            this.btnThoat.Text = "Thoát";
            // 
            // btnSua
            // 
            this.btnSua.Image = global::SieuThiBHX.Properties.Resources.loop;
            this.btnSua.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(79, 36);
            this.btnSua.Text = "Sửa";
            // 
            // btnXoa
            // 
            this.btnXoa.Image = global::SieuThiBHX.Properties.Resources.bin;
            this.btnXoa.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(80, 36);
            this.btnXoa.Text = "Xóa";
            // 
            // btnThem
            // 
            this.btnThem.Image = global::SieuThiBHX.Properties.Resources.plus;
            this.btnThem.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(95, 36);
            this.btnThem.Text = "Thêm";
            // 
            // toolStrip1
            // 
            this.toolStrip1.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(32, 32);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnThem,
            this.btnXoa,
            this.btnSua,
            this.btnLamMoi,
            this.btnThoat});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(1200, 39);
            this.toolStrip1.TabIndex = 7;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // btnLamMoi
            // 
            this.btnLamMoi.Image = global::SieuThiBHX.Properties.Resources.reset;
            this.btnLamMoi.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnLamMoi.Name = "btnLamMoi";
            this.btnLamMoi.Size = new System.Drawing.Size(120, 36);
            this.btnLamMoi.Text = "Làm mới";
            // 
            // gbDSKM
            // 
            this.gbDSKM.Controls.Add(this.dgvKM);
            this.gbDSKM.CustomBorderColor = System.Drawing.Color.DarkSeaGreen;
            this.gbDSKM.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.gbDSKM.FillColor = System.Drawing.SystemColors.Window;
            this.gbDSKM.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            this.gbDSKM.ForeColor = System.Drawing.Color.White;
            this.gbDSKM.Location = new System.Drawing.Point(0, 255);
            this.gbDSKM.Name = "gbDSKM";
            this.gbDSKM.Size = new System.Drawing.Size(1200, 368);
            this.gbDSKM.TabIndex = 9;
            this.gbDSKM.Text = "Danh sách khuyến mãi";
            this.gbDSKM.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dgvKM
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            this.dgvKM.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvKM.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvKM.ColumnHeadersHeight = 4;
            this.dgvKM.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvKM.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvKM.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvKM.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dgvKM.Location = new System.Drawing.Point(0, 43);
            this.dgvKM.Name = "dgvKM";
            this.dgvKM.RowHeadersVisible = false;
            this.dgvKM.Size = new System.Drawing.Size(1200, 325);
            this.dgvKM.TabIndex = 0;
            this.dgvKM.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.dgvKM.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.dgvKM.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.dgvKM.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.dgvKM.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.dgvKM.ThemeStyle.BackColor = System.Drawing.Color.White;
            this.dgvKM.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dgvKM.ThemeStyle.HeaderStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.dgvKM.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgvKM.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            this.dgvKM.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.White;
            this.dgvKM.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.dgvKM.ThemeStyle.HeaderStyle.Height = 4;
            this.dgvKM.ThemeStyle.ReadOnly = false;
            this.dgvKM.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.dgvKM.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.dgvKM.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            this.dgvKM.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.White;
            this.dgvKM.ThemeStyle.RowsStyle.Height = 22;
            this.dgvKM.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.dgvKM.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            // 
            // gbCTPN
            // 
            this.gbCTPN.Controls.Add(this.txtGiaTri);
            this.gbCTPN.Controls.Add(this.guna2HtmlLabel2);
            this.gbCTPN.Controls.Add(this.guna2HtmlLabel1);
            this.gbCTPN.Controls.Add(this.txtTenKhuyenMai);
            this.gbCTPN.CustomBorderColor = System.Drawing.Color.DarkSeaGreen;
            this.gbCTPN.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbCTPN.FillColor = System.Drawing.SystemColors.Window;
            this.gbCTPN.Font = new System.Drawing.Font("Segoe UI", 14.25F, System.Drawing.FontStyle.Bold);
            this.gbCTPN.ForeColor = System.Drawing.Color.White;
            this.gbCTPN.Location = new System.Drawing.Point(0, 39);
            this.gbCTPN.Name = "gbCTPN";
            this.gbCTPN.Size = new System.Drawing.Size(1200, 210);
            this.gbCTPN.TabIndex = 11;
            this.gbCTPN.Text = "Quản lý khuyến mãi";
            this.gbCTPN.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtTenKhuyenMai
            // 
            this.txtTenKhuyenMai.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtTenKhuyenMai.DefaultText = "";
            this.txtTenKhuyenMai.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtTenKhuyenMai.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtTenKhuyenMai.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtTenKhuyenMai.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtTenKhuyenMai.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtTenKhuyenMai.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtTenKhuyenMai.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtTenKhuyenMai.Location = new System.Drawing.Point(514, 68);
            this.txtTenKhuyenMai.Name = "txtTenKhuyenMai";
            this.txtTenKhuyenMai.PlaceholderText = "";
            this.txtTenKhuyenMai.SelectedText = "";
            this.txtTenKhuyenMai.Size = new System.Drawing.Size(381, 36);
            this.txtTenKhuyenMai.TabIndex = 0;
            // 
            // guna2HtmlLabel1
            // 
            this.guna2HtmlLabel1.BackColor = System.Drawing.Color.Transparent;
            this.guna2HtmlLabel1.ForeColor = System.Drawing.Color.Black;
            this.guna2HtmlLabel1.Location = new System.Drawing.Point(310, 77);
            this.guna2HtmlLabel1.Name = "guna2HtmlLabel1";
            this.guna2HtmlLabel1.Size = new System.Drawing.Size(144, 27);
            this.guna2HtmlLabel1.TabIndex = 1;
            this.guna2HtmlLabel1.Text = "Tên khuyến mãi";
            // 
            // guna2HtmlLabel2
            // 
            this.guna2HtmlLabel2.BackColor = System.Drawing.Color.Transparent;
            this.guna2HtmlLabel2.ForeColor = System.Drawing.Color.Black;
            this.guna2HtmlLabel2.Location = new System.Drawing.Point(397, 143);
            this.guna2HtmlLabel2.Name = "guna2HtmlLabel2";
            this.guna2HtmlLabel2.Size = new System.Drawing.Size(57, 27);
            this.guna2HtmlLabel2.TabIndex = 2;
            this.guna2HtmlLabel2.Text = "Giá trị";
            // 
            // txtGiaTri
            // 
            this.txtGiaTri.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.txtGiaTri.DefaultText = "";
            this.txtGiaTri.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.txtGiaTri.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.txtGiaTri.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtGiaTri.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.txtGiaTri.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtGiaTri.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.txtGiaTri.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.txtGiaTri.Location = new System.Drawing.Point(514, 134);
            this.txtGiaTri.Name = "txtGiaTri";
            this.txtGiaTri.PlaceholderText = "";
            this.txtGiaTri.SelectedText = "";
            this.txtGiaTri.Size = new System.Drawing.Size(381, 36);
            this.txtGiaTri.TabIndex = 3;
            // 
            // frmKhuyenMai
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1200, 623);
            this.Controls.Add(this.gbCTPN);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.gbDSKM);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmKhuyenMai";
            this.Text = "Khuyến mãi";
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.gbDSKM.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvKM)).EndInit();
            this.gbCTPN.ResumeLayout(false);
            this.gbCTPN.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStripButton btnThoat;
        private System.Windows.Forms.ToolStripButton btnSua;
        private System.Windows.Forms.ToolStripButton btnXoa;
        private System.Windows.Forms.ToolStripButton btnThem;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton btnLamMoi;
        private Guna.UI2.WinForms.Guna2GroupBox gbDSKM;
        private Guna.UI2.WinForms.Guna2DataGridView dgvKM;
        private Guna.UI2.WinForms.Guna2GroupBox gbCTPN;
        private Guna.UI2.WinForms.Guna2TextBox txtGiaTri;
        private Guna.UI2.WinForms.Guna2HtmlLabel guna2HtmlLabel2;
        private Guna.UI2.WinForms.Guna2HtmlLabel guna2HtmlLabel1;
        private Guna.UI2.WinForms.Guna2TextBox txtTenKhuyenMai;
    }
}