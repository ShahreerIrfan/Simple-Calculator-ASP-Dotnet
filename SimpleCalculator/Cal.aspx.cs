using System;

namespace SimpleCalculator
{
    public partial class Cal : System.Web.UI.Page
    {
        

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double num1, num2, result = 0;

            if (double.TryParse(txtFirstNumber.Text, out num1) && double.TryParse(txtSecondNumber.Text, out num2))
            {
                string operation = ddlOperation.SelectedValue;

                switch (operation)
                {
                    case "Add":
                        result = num1 + num2;
                        break;
                    case "Subtract":
                        result = num1 - num2;
                        break;
                    case "Multiply":
                        result = num1 * num2;
                        break;
                    case "Divide":
                        if (num2 != 0)
                        {
                            result = num1 / num2;
                        }
                        else
                        {
                            lblResult.Text = "Cannot divide by zero!";
                            return;
                        }
                        break;
                }

                lblResult.Text = "Result: " + result.ToString();
            }
            else
            {
                lblResult.Text = "Please enter valid numbers.";
            }
        }
    }
}
