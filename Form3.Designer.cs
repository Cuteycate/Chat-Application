﻿namespace Chat_Application
{
    partial class Form3
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
            this.label1 = new System.Windows.Forms.Label();
            this.dgvUsers = new System.Windows.Forms.DataGridView();
            this.txbUsername = new System.Windows.Forms.TextBox();
            this.txbPassword = new System.Windows.Forms.TextBox();
            this.txbEmail = new System.Windows.Forms.TextBox();
            this.cmbPermission = new System.Windows.Forms.ComboBox();
            this.pcbAnhnguoidung = new System.Windows.Forms.PictureBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.chuyểnDatabaseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuUser = new System.Windows.Forms.ToolStripMenuItem();
            this.menuReportLog = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txbReportID = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btnDeletereport = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.txbNote = new System.Windows.Forms.TextBox();
            this.cmbReason = new System.Windows.Forms.ComboBox();
            this.dgvReports = new System.Windows.Forms.DataGridView();
            this.label7 = new System.Windows.Forms.Label();
            this.pcbProfile = new Guna.UI2.WinForms.Guna2CirclePictureBox();
            this.label10 = new System.Windows.Forms.Label();
            this.pcbBannernguoidung = new System.Windows.Forms.PictureBox();
            this.txbGioitinh = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.dtpNgaySinh = new System.Windows.Forms.DateTimePicker();
            this.label12 = new System.Windows.Forms.Label();
            this.txbUserDescription = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUsers)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbAnhnguoidung)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReports)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbProfile)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbBannernguoidung)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(31, 110);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 24);
            this.label1.TabIndex = 4;
            this.label1.Text = "label1";
            // 
            // dgvUsers
            // 
            this.dgvUsers.AllowUserToAddRows = false;
            this.dgvUsers.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvUsers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUsers.Location = new System.Drawing.Point(11, 213);
            this.dgvUsers.Name = "dgvUsers";
            this.dgvUsers.Size = new System.Drawing.Size(1015, 301);
            this.dgvUsers.TabIndex = 5;
            this.dgvUsers.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUsers_CellClick);
            // 
            // txbUsername
            // 
            this.txbUsername.Location = new System.Drawing.Point(651, 12);
            this.txbUsername.Name = "txbUsername";
            this.txbUsername.Size = new System.Drawing.Size(112, 20);
            this.txbUsername.TabIndex = 6;
            // 
            // txbPassword
            // 
            this.txbPassword.Location = new System.Drawing.Point(651, 40);
            this.txbPassword.Name = "txbPassword";
            this.txbPassword.Size = new System.Drawing.Size(112, 20);
            this.txbPassword.TabIndex = 7;
            // 
            // txbEmail
            // 
            this.txbEmail.Location = new System.Drawing.Point(651, 72);
            this.txbEmail.Name = "txbEmail";
            this.txbEmail.Size = new System.Drawing.Size(138, 20);
            this.txbEmail.TabIndex = 8;
            // 
            // cmbPermission
            // 
            this.cmbPermission.FormattingEnabled = true;
            this.cmbPermission.Location = new System.Drawing.Point(651, 99);
            this.cmbPermission.Name = "cmbPermission";
            this.cmbPermission.Size = new System.Drawing.Size(138, 21);
            this.cmbPermission.TabIndex = 9;
            // 
            // pcbAnhnguoidung
            // 
            this.pcbAnhnguoidung.Location = new System.Drawing.Point(230, 15);
            this.pcbAnhnguoidung.Name = "pcbAnhnguoidung";
            this.pcbAnhnguoidung.Size = new System.Drawing.Size(124, 108);
            this.pcbAnhnguoidung.TabIndex = 10;
            this.pcbAnhnguoidung.TabStop = false;
            this.pcbAnhnguoidung.Click += new System.EventHandler(this.pcbAnhnguoidung_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(589, 15);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Username";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(589, 40);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Password";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(589, 102);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 14;
            this.label4.Text = "Quyền";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(589, 72);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(32, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "Email";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(142, 72);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(82, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "Ảnh người dùng";
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(278, 125);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(75, 23);
            this.btnUpdate.TabIndex = 16;
            this.btnUpdate.Text = "Cập Nhật";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(370, 126);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 18;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.chuyểnDatabaseToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1097, 24);
            this.menuStrip1.TabIndex = 19;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // chuyểnDatabaseToolStripMenuItem
            // 
            this.chuyểnDatabaseToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuUser,
            this.menuReportLog});
            this.chuyểnDatabaseToolStripMenuItem.Name = "chuyểnDatabaseToolStripMenuItem";
            this.chuyểnDatabaseToolStripMenuItem.Size = new System.Drawing.Size(110, 20);
            this.chuyểnDatabaseToolStripMenuItem.Text = "Chuyển database";
            // 
            // menuUser
            // 
            this.menuUser.Name = "menuUser";
            this.menuUser.Size = new System.Drawing.Size(129, 22);
            this.menuUser.Text = "User";
            this.menuUser.Click += new System.EventHandler(this.menuUser_Click);
            // 
            // menuReportLog
            // 
            this.menuReportLog.Name = "menuReportLog";
            this.menuReportLog.Size = new System.Drawing.Size(129, 22);
            this.menuReportLog.Text = "ReportLog";
            this.menuReportLog.Click += new System.EventHandler(this.menuReportLog_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txbReportID);
            this.panel1.Controls.Add(this.label9);
            this.panel1.Controls.Add(this.btnDeletereport);
            this.panel1.Controls.Add(this.label8);
            this.panel1.Controls.Add(this.txbNote);
            this.panel1.Controls.Add(this.cmbReason);
            this.panel1.Controls.Add(this.dgvReports);
            this.panel1.Controls.Add(this.label7);
            this.panel1.Location = new System.Drawing.Point(12, 126);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1036, 388);
            this.panel1.TabIndex = 20;
            this.panel1.Visible = false;
            // 
            // txbReportID
            // 
            this.txbReportID.Location = new System.Drawing.Point(864, 49);
            this.txbReportID.Name = "txbReportID";
            this.txbReportID.Size = new System.Drawing.Size(86, 20);
            this.txbReportID.TabIndex = 21;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(808, 52);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(50, 13);
            this.label9.TabIndex = 21;
            this.label9.Text = "ReportID";
            // 
            // btnDeletereport
            // 
            this.btnDeletereport.Location = new System.Drawing.Point(358, 43);
            this.btnDeletereport.Name = "btnDeletereport";
            this.btnDeletereport.Size = new System.Drawing.Size(75, 23);
            this.btnDeletereport.TabIndex = 23;
            this.btnDeletereport.Text = "Xóa Report";
            this.btnDeletereport.UseVisualStyleBackColor = true;
            this.btnDeletereport.Click += new System.EventHandler(this.btnDeletereport_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(587, 52);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(35, 13);
            this.label8.TabIndex = 22;
            this.label8.Text = "Lý Do";
            // 
            // txbNote
            // 
            this.txbNote.Location = new System.Drawing.Point(649, 4);
            this.txbNote.Multiline = true;
            this.txbNote.Name = "txbNote";
            this.txbNote.ReadOnly = true;
            this.txbNote.Size = new System.Drawing.Size(299, 32);
            this.txbNote.TabIndex = 21;
            // 
            // cmbReason
            // 
            this.cmbReason.FormattingEnabled = true;
            this.cmbReason.Location = new System.Drawing.Point(649, 49);
            this.cmbReason.Name = "cmbReason";
            this.cmbReason.Size = new System.Drawing.Size(138, 21);
            this.cmbReason.TabIndex = 21;
            // 
            // dgvReports
            // 
            this.dgvReports.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvReports.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvReports.Location = new System.Drawing.Point(1, 87);
            this.dgvReports.Name = "dgvReports";
            this.dgvReports.Size = new System.Drawing.Size(1013, 301);
            this.dgvReports.TabIndex = 0;
            this.dgvReports.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvReports_CellClick);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(587, 4);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(30, 13);
            this.label7.TabIndex = 21;
            this.label7.Text = "Note";
            // 
            // pcbProfile
            // 
            this.pcbProfile.FillColor = System.Drawing.Color.RosyBrown;
            this.pcbProfile.ImageRotate = 0F;
            this.pcbProfile.Location = new System.Drawing.Point(27, 27);
            this.pcbProfile.Name = "pcbProfile";
            this.pcbProfile.ShadowDecoration.Mode = Guna.UI2.WinForms.Enums.ShadowMode.Circle;
            this.pcbProfile.Size = new System.Drawing.Size(83, 80);
            this.pcbProfile.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pcbProfile.TabIndex = 21;
            this.pcbProfile.TabStop = false;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(360, 72);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(97, 13);
            this.label10.TabIndex = 23;
            this.label10.Text = "Banner người dùng";
            // 
            // pcbBannernguoidung
            // 
            this.pcbBannernguoidung.Location = new System.Drawing.Point(462, 12);
            this.pcbBannernguoidung.Name = "pcbBannernguoidung";
            this.pcbBannernguoidung.Size = new System.Drawing.Size(124, 108);
            this.pcbBannernguoidung.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pcbBannernguoidung.TabIndex = 22;
            this.pcbBannernguoidung.TabStop = false;
            this.pcbBannernguoidung.Click += new System.EventHandler(this.pcbBannernguoidung_Click);
            // 
            // txbGioitinh
            // 
            this.txbGioitinh.Location = new System.Drawing.Point(874, 12);
            this.txbGioitinh.Name = "txbGioitinh";
            this.txbGioitinh.Size = new System.Drawing.Size(112, 20);
            this.txbGioitinh.TabIndex = 24;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(813, 15);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(51, 13);
            this.label11.TabIndex = 25;
            this.label11.Text = "Giới Tính";
            // 
            // dtpNgaySinh
            // 
            this.dtpNgaySinh.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgaySinh.Location = new System.Drawing.Point(875, 38);
            this.dtpNgaySinh.Name = "dtpNgaySinh";
            this.dtpNgaySinh.Size = new System.Drawing.Size(111, 20);
            this.dtpNgaySinh.TabIndex = 26;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(813, 40);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(56, 13);
            this.label12.TabIndex = 27;
            this.label12.Text = "Ngày Sinh";
            // 
            // txbUserDescription
            // 
            this.txbUserDescription.Location = new System.Drawing.Point(873, 64);
            this.txbUserDescription.Multiline = true;
            this.txbUserDescription.Name = "txbUserDescription";
            this.txbUserDescription.Size = new System.Drawing.Size(175, 56);
            this.txbUserDescription.TabIndex = 28;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(794, 67);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(80, 13);
            this.label13.TabIndex = 29;
            this.label13.Text = "Userdescription";
            // 
            // Form3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1097, 524);
            this.Controls.Add(this.txbUserDescription);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.dtpNgaySinh);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txbGioitinh);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.pcbBannernguoidung);
            this.Controls.Add(this.pcbProfile);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pcbAnhnguoidung);
            this.Controls.Add(this.cmbPermission);
            this.Controls.Add(this.txbEmail);
            this.Controls.Add(this.txbPassword);
            this.Controls.Add(this.txbUsername);
            this.Controls.Add(this.dgvUsers);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.panel1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form3";
            this.Text = "Form3";
            this.Load += new System.EventHandler(this.Form3_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUsers)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbAnhnguoidung)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReports)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbProfile)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcbBannernguoidung)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvUsers;
        private System.Windows.Forms.TextBox txbUsername;
        private System.Windows.Forms.TextBox txbPassword;
        private System.Windows.Forms.TextBox txbEmail;
        private System.Windows.Forms.ComboBox cmbPermission;
        private System.Windows.Forms.PictureBox pcbAnhnguoidung;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem chuyểnDatabaseToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menuUser;
        private System.Windows.Forms.ToolStripMenuItem menuReportLog;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgvReports;
        private System.Windows.Forms.TextBox txbNote;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cmbReason;
        private System.Windows.Forms.Button btnDeletereport;
        private System.Windows.Forms.TextBox txbReportID;
        private System.Windows.Forms.Label label9;
        private Guna.UI2.WinForms.Guna2CirclePictureBox pcbProfile;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.PictureBox pcbBannernguoidung;
        private System.Windows.Forms.TextBox txbGioitinh;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.DateTimePicker dtpNgaySinh;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txbUserDescription;
        private System.Windows.Forms.Label label13;
    }
}