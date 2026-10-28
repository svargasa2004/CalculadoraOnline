using System;

namespace CalculadoraWeb1
{
    public partial class inicio : System.Web.UI.Page
    {
        float valor1, valor2, total;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bsuma_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1) &&
                float.TryParse(tnum2.Text, out valor2))
            {
                total = valor1 + valor2;
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese dos números válidos";
            }
        }

        protected void bresta_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1) &&
                float.TryParse(tnum2.Text, out valor2))
            {
                total = valor1 - valor2;
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese dos números válidos";
            }
        }

        protected void bmulti_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1) &&
                float.TryParse(tnum2.Text, out valor2))
            {
                total = valor1 * valor2;
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese dos números válidos";
            }
        }

        protected void bdivi_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1) &&
                float.TryParse(tnum2.Text, out valor2))
            {
                if (valor2 != 0)
                {
                    total = valor1 / valor2;
                    lresultado.Text = total.ToString();
                }
                else
                {
                    lresultado.Text = "No se puede dividir entre cero";
                }
            }
            else
            {
                lresultado.Text = "Ingrese dos números válidos";
            }
        }

        protected void bpot2_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1))
            {
                total = valor1 * valor1;
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese un número válido";
            }
        }

        protected void bexp_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1))
            {
                total = (float)Math.Exp(valor1);
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese un número válido";
            }
        }

        protected void b10x_Click(object sender, EventArgs e)
        {
            if (float.TryParse(tnum1.Text, out valor1))
            {
                total = (float)Math.Pow(10, valor1);
                lresultado.Text = total.ToString();
            }
            else
            {
                lresultado.Text = "Ingrese un número válido";
            }
        }
    }
}