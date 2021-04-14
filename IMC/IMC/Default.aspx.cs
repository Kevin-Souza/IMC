using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMC
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            lblResu.ForeColor = Color.Black;
            double alt, peso, imc;
            alt = double.Parse(txtAltura.Text);
            peso = double.Parse(txtPeso.Text);

            imc = peso / (alt * alt);

            if (imc < 18.5)
            {
                lblResu.Text = $"{imc} Magreza";
                lblResu.ForeColor = Color.Red;
            }
            else if (imc >= 18.5 && imc <= 24.9) {
                lblResu.Text = $"{imc} Nomal";
                lblResu.ForeColor = Color.Green;
            }
            else if (imc >= 25 && imc <= 29.9)
            {
                lblResu.Text = $"{imc} Sobrepeso";
                lblResu.ForeColor = Color.Yellow;
            }
            else if (imc >= 30 && imc <= 39.9)
            {
                lblResu.Text = $"{imc} Obesidade";
                lblResu.ForeColor = Color.OrangeRed;
            }
            else if (imc > 40)
            {
                lblResu.Text = $"{imc} <b>Obesidade Grave<b>";
                lblResu.ForeColor = Color.Red;
            }
        }
    }
}