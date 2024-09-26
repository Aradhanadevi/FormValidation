<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormValidation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        
        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px 15px;
        }

        th {
            text-align: left;
            font-weight: bold;
        }
        .button-style {
            background-color:#0b9f9d ;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }
        .button-style:hover {
            background-color: #26c9d0;
        }
        .auto-style3 input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .error {
            color: red;
            font-size: 0.9em;
        }

        .button-container {
            text-align: right;
            padding-top: 20px;
        }

        button {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            th, td {
                display: block;
                width: 100%;
            }

            .button-container {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <table>
                <tr>
                    <th scope="row">Username:</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="TextBox1"
                            ErrorMessage="User Name is required"
                            CssClass="error"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Email:</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ControlToValidate="TextBox2"
                            EnableViewState="False" 
                            ErrorMessage="Not correct email"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            CssClass="error">
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <th scope="row">New Password:</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Confirm Password:</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator 
                            ID="CompareValidator1" 
                            runat="server"
                            ControlToCompare="TextBox3"
                            ControlToValidate="TextBox4"
                            ErrorMessage="Password incorrect" 
                            CssClass="error">
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Mobile no:</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:CustomValidator
                            ID="CustomValidator2" 
                            runat="server" 
                            ClientValidationFunction="validatePhoneNumber"
                            ControlToValidate="TextBox5"
                            ErrorMessage="Mobile number not proper"
                            OnServerValidate="CustomValidator2_ServerValidate" 
                            CssClass="error"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <th scope="row">C.P.G.A</th>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RangeValidator 
                            ID="RangeValidator1" 
                            runat="server"
                            ControlToValidate="TextBox7"
                            ErrorMessage="Out of range " 
                            MaximumValue="10" 
                            MinimumValue="1"
                            ViewStateMode="Disabled"
                            CssClass="error"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <asp:ValidationSummary 
                            ID="ValidationSummary1"
                            runat="server"
                            CssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button-style" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>

  

</html>
