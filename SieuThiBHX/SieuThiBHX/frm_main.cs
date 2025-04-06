using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SieuThiBHX
{
    public partial class frm_main : Form
    {
        public frm_main()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
        }
        public void ActForm(string name)
        {
            foreach (Form item in MdiChildren)
            {
                if (item.Name == name)
                {
                    item.Activate();
                    break;
                }
            }
        }
        public bool CheckFormExit(string name)
        {

            foreach (Form item in MdiChildren)
            {
                if (item.Name == name)
                {
                    return true;
                }
            }
            return false;
        }
        private void frm_main_Load(object sender, EventArgs e)
        {

        }
        private void hóaĐơnToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_HoaDon"))
            {
                frm_HoaDon f = new frm_HoaDon();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_HoaDon");
            }
        }

        private void chiTiếtHóaĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_ChiTietHoaDon"))
            {
                frm_ChiTietHoaDon f = new frm_ChiTietHoaDon();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_ChiTietHoaDon");
            }
        }

        private void khoHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_KhoHang"))
            {
                frm_KhoHang f = new frm_KhoHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_KhoHang");
            }
        }

        private void loạiHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_LoaiHang"))
            {
                frm_LoaiHang f = new frm_LoaiHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_LoaiHang");
            }
        }

        private void KhachHangToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_KhachHang"))
            {
                frm_KhachHang f = new frm_KhachHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_KhachHang");
            }
        }

        private void sảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckFormExit("frm_SanPham"))
            {
                frm_SanPham f = new frm_SanPham();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActForm("frm_SanPham");
            }
        }
    }
}
