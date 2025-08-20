<%@ Page Language="C#" Title="SignIn" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container ">
            <div class="form-horizontal ">
                <h2>Login Form</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class="col-md-3 ">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass=" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass="btn btn-success " runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>

                <%--  for forgot password--%>
                <div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>

                    </div>
                </div>



                <div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6 ">

                        <asp:Label ID="lblError" CssClass="text-danger " runat="server"></asp:Label>
                    </div>
                </div>


            </div>


        </div>
        <!----singin form End--->
</asp:Content>
