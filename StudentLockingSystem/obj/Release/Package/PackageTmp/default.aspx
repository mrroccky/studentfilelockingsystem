<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="StudentLockingSystem._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {
            background-color: #FFF4EB;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #FFF4EB;
            padding: 20px;
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
            text-transform:uppercase;
        }
        .form-group {
            margin-bottom: 12px;
        }
        .txtinput {
            border-radius:12px;
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        .error {
            color: red;
            font-size: 12px;
        }
        .btn {
            width: 100%;
            background: #eb8634;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 16px;
            font-size: 16px;
            margin-top: 10px;
}

.btn:hover {
    background: #211308;
}
       .link {
    display: block;
    text-align: center;
    margin-top: 10px;
    color: #f8a969;
    text-decoration: none;
}

.link:hover {
    text-decoration: underline;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> User Registration</h2><br />
            <br />
            Enter name :&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;<asp:TextBox CssClass="txtinput" ID="txtName" runat="server"></asp:TextBox>
            <br />
            Enter mobile :&nbsp;<asp:RegularExpressionValidator ID="mobileexpressionVaLIDATOR" runat="server" ControlToValidate="txtMobile" ErrorMessage="Allowed 10 digit mobile number" ValidationExpression="\d{10}" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            &nbsp;<asp:TextBox CssClass="txtinput" ID="txtMobile" runat="server"></asp:TextBox>
            &nbsp;<br />
            Enter email :<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            &nbsp;<asp:TextBox CssClass="txtinput" ID="txtEmail" type="email" runat="server"></asp:TextBox>
            <br />
            Enter password :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;<asp:TextBox CssClass="txtinput" ID="txtPassword" type="password" runat="server"></asp:TextBox>
            &nbsp;<br />
            Upload photo :
            <asp:FileUpload ID="btnBrowseImage" runat="server" />
&nbsp;<asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
            <br />
            Date :<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="Date cant be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;<asp:TextBox  CssClass="txtinput" ID="txtDate" runat="server"></asp:TextBox>
            &nbsp;<br />
            <asp:Button ID="btnLogIn" CssClass="btn" runat="server" OnClick="btnLogIn_Click" Text="Log In " />
&nbsp;<asp:HyperLink ID="linkGotoCreateAccount" runat="server" NavigateUrl="~/LogInPage.aspx">Alredy have an account</asp:HyperLink>
            <br />
            
        </div>
    </form>
</body>
</html>
