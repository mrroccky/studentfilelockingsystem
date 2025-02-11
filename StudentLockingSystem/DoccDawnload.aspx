<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoccDawnload.aspx.cs" Inherits="StudentLockingSystem.DoccDawnload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
             background-color: #FFF4EB;
        }
       .wrapper {
    display: flex;
    justify-content: space-between;
    width: 80%;
    margin: 0 auto; 
    padding: 0 10%; 
}

.text-center {
    text-align: center;
    text-transform:uppercase;
}

.left-div {
    padding-top: 30px;
}

.right-div {
    text-align: right; 
}

.bottom-div {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 100%;
    margin: 20px auto;
    padding-left: 10%;
}

.input-field {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.btn {
    width: 40%;
    background: #007BFF;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}

.btn:hover {
    background: #0056b3;
}

#tbldawnload {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
}

#tbldawnload td, #tbldawnload th {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: center;
}

#btnLogOut {
    display: block;
    width: 10%;
    background: red;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    margin: 20px auto;
    text-align: center;
}

#btnLogOut:hover {
    background: darkred;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
         <h2 class="text-center">Document Dawnload form</h2>
        <div>
             <div class="wrapper">
        <div class="left-div">
            <br />
            <br />
            Name :
            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
            <br />
            Email :
            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="right-div">
            <asp:Image ID="iiImage" runat="server" Height="273px" Width="249px" />
        </div>
        </div>
        </div>
        <asp:Table ID="tbldawnload" runat="server" Height="207px" Width="1037px">
    <asp:TableRow runat="server">
        <asp:TableCell runat="server">S.No</asp:TableCell>
        <asp:TableCell runat="server">Document Name</asp:TableCell>
        <asp:TableCell runat="server">Password</asp:TableCell>
        <asp:TableCell runat="server">Button</asp:TableCell>
        <asp:TableCell runat="server">Download Link</asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableCell runat="server">1</asp:TableCell>
        <asp:TableCell runat="server"><asp:Label ID="lblResumeName" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell runat="server"><asp:TextBox ID="txtPassResume" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell runat="server"><asp:Button ID="btnPassCheckResume" OnClick="btnResumePassCheckPage_Click" runat="server" Text="Active" /></asp:TableCell>
        <asp:TableCell runat="server"><asp:HyperLink ID="linkDawnloadResume" runat="server">Download</asp:HyperLink></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableCell runat="server">2</asp:TableCell>
        <asp:TableCell runat="server"><asp:Label ID="lblDegreeName" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell runat="server"><asp:TextBox ID="txtPassDegree" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell runat="server"><asp:Button ID="btnPassCheckDegree" OnClick="btnDegreePassCheckPage_Click" runat="server" Text="Active" /></asp:TableCell>
        <asp:TableCell runat="server"><asp:HyperLink ID="linkDawnloadDegree" runat="server">Download</asp:HyperLink></asp:TableCell>
    </asp:TableRow>
</asp:Table>

        <br />

        
        <br />
        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
        <br />
        
    </form>
    <table  id="tableid" style="height: 333px; width: 912px">
                 
    </table>
</body>
</html>
