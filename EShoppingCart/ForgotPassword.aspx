<%@ Page Language="C#" Title="Forgot password" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Recover Password</h2>
            <hr />
            <h3>Please Enter Your Email Address, we will send you the recovery link for your password!</h3>

            <div class="form-group">
                <asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Your Email Address"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmailID" CssClass=" form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-group">
                <div class="col-md-2"></div>

                <div class="col-md-6">
                    <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                    <asp:Label ID="lblResetPassMsg" CssClass="text-success " runat="server"></asp:Label>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
