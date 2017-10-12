using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Calculator : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            ValueBox1.Text = ValueBox1.Text.Replace(",", ".");
            ValueBox2.Text = ValueBox2.Text.Replace(",", ".");
            if (ValueBox1.Text.Length > 0 && ValueBox2.Text.Length > 0)
            {
                double result = 0;
                try
                {
                    double value1 = Convert.ToDouble(ValueBox1.Text);
                    double value2 = Convert.ToDouble(ValueBox2.Text);
                    switch (OperatorList.SelectedValue)
                    {
                        case "+":
                            result = value1 + value2;
                            break;
                        case "-":
                            result = value1 - value2;
                            break;
                        case "x":
                            result = value1 * value2;
                            break;
                        case "/":
                            result = value1 / value2;
                            break;
                        case "mod":
                            result = value1 % value2;
                            break;
                    }
                    ResultLabel.Text = result.ToString();
                }
                catch
                {
                    ResultLabel.Text = "Your Input must be wrong!";
                }
            }
            else
            {
                ResultLabel.Text = "Input your number!";
            }
        }
    }
}