<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doccument.aspx.cs" Inherits="StudentLockingSystem.Doccument" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        body{
             background-color: #FFF4EB;
        }
        .wrapper {
           display: flex;
            justify-content: space-between;
            width: 80%; 
            margin: 0 auto;
        }

        .text-center {
            text-align: center;
            text-transform:uppercase;
        }

        .left-div {
            padding-top: 30px;
        }

        .bottom-div {
            width: 100%
        }

        .input-field {
            width:110%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 16px;
        }

        .btn {
            width: 100%;
            background: #eb8634;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 16px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

            .btn:hover {
                background:black;
            }

        .bottom-div {
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Aligns content to the left */
            justify-content: center;
            margin-top: 20px;
            width: fit-content;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <h2 class="text-center">Document Upload Form</h2>
        <br />
        <div class="wrapper">
            <div class="left-div">

                <br />
                Name :
            <asp:Label ID="lblName" runat="server"></asp:Label>
                <br />
                Email :
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </div>
            <div class="right-div">
                <asp:Image ID="iiImage" runat="server" Height="273px" Width="249px" />
            </div>
        </div>
        <div class="bottom-div">
            <p>
                Upload Resume :&nbsp;
            <asp:FileUpload ID="btnFileBrows" runat="server" />
                &nbsp;<asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
            </p>
            <p>
                Protect with password :
            <asp:TextBox type="password" CssClass="input-field" ID="txtPassProtectResume" runat="server"></asp:TextBox>
            </p>
            <p>
                Upload degree :
            <asp:FileUpload ID="btnFileBrows2" runat="server" />
                &nbsp;<asp:Button ID="btnUpload2" runat="server" OnClick="btnUpload2_Click" Text="Upload" />
            </p>
            <p>
                Protect with password :
            <asp:TextBox type="password" CssClass="input-field" ID="txtPassProtectDegree" runat="server"></asp:TextBox>
            </p>
            <asp:Button CssClass="btn" ID="btnGoToDawnloadFormPage" runat="server" OnClick="btnGoToDawnloadFormPage_Click" Text="Go to dawnload form upload" />
        </div>
    </form>
</body>
</html>
