﻿namespace Login
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.text_Nombre = new System.Windows.Forms.TextBox();
            this.text_Contraseña = new System.Windows.Forms.TextBox();
            this.picture_login = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.picture_login)).BeginInit();
            this.SuspendLayout();
            // 
            // text_Nombre
            // 
            this.text_Nombre.BackColor = System.Drawing.Color.SlateGray;
            this.text_Nombre.Location = new System.Drawing.Point(258, 111);
            this.text_Nombre.Multiline = true;
            this.text_Nombre.Name = "text_Nombre";
            this.text_Nombre.Size = new System.Drawing.Size(371, 47);
            this.text_Nombre.TabIndex = 0;
            // 
            // text_Contraseña
            // 
            this.text_Contraseña.BackColor = System.Drawing.Color.SlateGray;
            this.text_Contraseña.Location = new System.Drawing.Point(258, 181);
            this.text_Contraseña.Multiline = true;
            this.text_Contraseña.Name = "text_Contraseña";
            this.text_Contraseña.Size = new System.Drawing.Size(371, 47);
            this.text_Contraseña.TabIndex = 1;
            // 
            // picture_login
            // 
            this.picture_login.BackColor = System.Drawing.Color.Transparent;
            this.picture_login.Location = new System.Drawing.Point(470, 252);
            this.picture_login.Name = "picture_login";
            this.picture_login.Size = new System.Drawing.Size(159, 44);
            this.picture_login.TabIndex = 3;
            this.picture_login.TabStop = false;
            this.picture_login.Click += new System.EventHandler(this.picture_login_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Image = global::Login.Properties.Resources.login;
            this.label1.Location = new System.Drawing.Point(263, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 17);
            this.label1.TabIndex = 4;
            this.label1.Text = "Usuario";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Image = global::Login.Properties.Resources.login;
            this.label2.Location = new System.Drawing.Point(263, 161);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 17);
            this.label2.TabIndex = 5;
            this.label2.Text = "Contraseña";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Login.Properties.Resources.login;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(723, 335);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.picture_login);
            this.Controls.Add(this.text_Contraseña);
            this.Controls.Add(this.text_Nombre);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.picture_login)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox text_Nombre;
        private System.Windows.Forms.TextBox text_Contraseña;
        private System.Windows.Forms.PictureBox picture_login;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}

