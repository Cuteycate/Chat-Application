﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Chat_Application
{
    public partial class UserControl1 : UserControl
    {
        public UserControl1()
        {
            InitializeComponent();
        }
        private string _tittle;

        public string Title
        {
            get { return _tittle; }
            set { _tittle = value;label1.Text = value; }
        }
        private string _icon;
        public string Icon
        {
            get { return _icon; }
            set { _icon = value;ThemHinhAnh(_icon); }
        }

        private string _status;

        public string Status
        {
            get { return _status; }
            set { _status = value; ThemStatus(_status); }
        }
        private void ThemHinhAnh(string Imagename)
        {
            if (string.IsNullOrEmpty(Imagename))
            {
                pcbDanhBa.Image = null;
            }
            else
            {
                string parentDirectory = Directory.GetParent(AppDomain.CurrentDomain.BaseDirectory).Parent.Parent.FullName;
                string imagepath = Path.Combine(parentDirectory, "Images", Imagename);
                pcbDanhBa.Image = Image.FromFile(imagepath);
                pcbDanhBa.Refresh();
            }
        }
        private void ThemStatus(string status)
        {
            if(status == "True")
            {
               pcbStatus.BackColor = Color.Green;   
            }
            else
            {
                pcbStatus.BackColor = Color.Gray;
            }
        }
        private void UserControl1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
