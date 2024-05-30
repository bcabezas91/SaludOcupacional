﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SaludOcupacional_View
{
    public partial class MDIPrincipal : Form
    {
        public MDIPrincipal()
        {
            InitializeComponent();
        }

        private void MDIPrincipal_Resize(object sender, EventArgs e)
        {
            this.Refresh();
        }

        private void empleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmEmpleado frm1 = new FrmEmpleado();
            frm1.MdiParent = this;
            frm1.Show();
        }

        private void pacienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmPaciente frm2 = new frmPaciente();
            frm2.MdiParent = this;
            frm2.Show();
        }

        private void salirDelSistemaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
