<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="StudentLockingSystem.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
    padding: 20px;
    width: 350px;
    text-align: center;
}

h2 {
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 12px;
    text-align: left;
}


.input-field {
    border-radius:12px;
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    font-size: 14px;
}

.error-message {
    color: red;
    font-size: 12px;
}

.btn {
    border-radius:16px;
     background: #eb8634;
     color: white;
    padding: 10px;
    border: none;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}

.btn:hover {
    background-color:black;
}

.link {
    display: block;
    text-align: center;
    margin-top: 10px;
    text-decoration: none;
}

.link:hover {
    text-decoration: underline;
}

    </style>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Log In</h2>

            <div class="form-group">
                <label for="txtEmailCheck">Enter Email:</label>
                <asp:TextBox type="email" ID="txtEmailCheck" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailCheck"
                    ErrorMessage="Enter a valid Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    CssClass="error-message"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="txtPassCheck">Enter Password:</label>
                <asp:TextBox type="password" ID="txtPassCheck" runat="server" CssClass="input-field"></asp:TextBox>
            </div>

            <asp:Label ID="lblError" runat="server" CssClass="error-message"></asp:Label>

            <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" CssClass="btn" />

            <asp:HyperLink ID="linkGotoCreateAccount" runat="server" NavigateUrl="~/default.aspx" CssClass="link">
                Create an account
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>
