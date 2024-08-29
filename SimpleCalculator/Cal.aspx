<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cal.aspx.cs" Inherits="SimpleCalculator.Cal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Simple Calculator</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <h3 class="text-center">Simple Calculator</h3>
                    <div class="form-group">
                        <asp:TextBox ID="txtFirstNumber" runat="server" CssClass="form-control" Placeholder="Enter First Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtSecondNumber" runat="server" CssClass="form-control" Placeholder="Enter Second Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:DropDownList ID="ddlOperation" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Add" Value="Add"></asp:ListItem>
                            <asp:ListItem Text="Subtract" Value="Subtract"></asp:ListItem>
                            <asp:ListItem Text="Multiply" Value="Multiply"></asp:ListItem>
                            <asp:ListItem Text="Divide" Value="Divide"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="btn btn-primary btn-block" OnClick="btnCalculate_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResult" runat="server" CssClass="form-control text-center font-weight-bold"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
