<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPanel.master" AutoEventWireup="true" CodeFile="A_Login.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="divadlg">

        <table class="auto-style1">
            <tr class="tradlgm">
                <td>
                    <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
                </td>
            </tr>
            <tr class="tradlgo">
                <td>
                    <asp:Label ID="userid" runat="server" Text="User ID" CssClass="lbladlg"></asp:Label>
                    <br />
                    <asp:TextBox ID="useridtxt" runat="server" CssClass="txtadlg"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="fvalg" ErrorMessage="* Enter User Id " Font-Italic="True" ControlToValidate="useridtxt" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tradlgo">
                <td>
                    <asp:Label ID="pass" runat="server" Text="Password" CssClass="lbladlg"></asp:Label>
                    <br />
                    <asp:TextBox ID="passtxt" runat="server" CssClass="txtadlg" CausesValidation="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter password" ControlToValidate="passtxt" CssClass="fvalg" Font-Italic="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tradlgo">
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btnadlg" OnClick="btnsubmit_Click"/>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" CssClass="btnadlg" OnClick="btnreset_Click" CausesValidation="False"/>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>




