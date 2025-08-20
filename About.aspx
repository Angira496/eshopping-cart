<%@ Page Language="C#" Title="About" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>About me Page</title>
    <style>
        .jumbotron {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
        }

        .container-fluid {
            padding: 60px 50px;
        }

        .bg-grey {
            background-color: #f6f6f6;
        }

        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }

        .logo {
            color: #f4511e;
            font-size: 200px;
        }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />

    <!-- Container (About Section) -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8">
                <h2>About Company Page</h2>
                <h4>Developer..</h4>
                <p>I am geek at heart that loves to learn and play with new technologies. I am grounded with solid object oriented programming principles, but spread my wings across most of the Microsoft product stack: from ASP.NET MVC, WCF, Windows forms, Silverlight, Business Intelligence, PerformancePoint Services, VSTO to SharePoint.</p>
                <%--<button  id="btn11" runat="server" onclick="btn11_onclick()">Get in Touch</button>--%>
                <asp:Button class="btn btn-default btn-lg" ID="Button1" runat="server"
                    Text="Get in Touch" OnClick="Button1_Click" />

            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-signal logo"></span>
            </div>
        </div>
    </div>

    <div class="container-fluid bg-grey">
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-globe logo"></span>
            </div>
            <div class="col-sm-8">
                <h2>Our Values</h2>
                <h4><strong>MISSION:</strong> Our mission lorem ipsum..</h4>
                <p><strong>VISION:</strong> Our vision Lorem ipsum..</p>
            </div>
        </div>
    </div>

    <!-- Container (Services Section) -->
    <div class="container-fluid text-center">
        <h2>SERVICES</h2>
        <h4>What we offer</h4>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-off logo-small"></span>
                <h4>POWER</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-heart logo-small"></span>
                <h4>LOVE</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-lock logo-small"></span>
                <h4>JOB DONE</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-leaf logo-small"></span>
                <h4>GREEN</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-certificate logo-small"></span>
                <h4>CERTIFIED</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-wrench logo-small"></span>
                <h4 style="color: #303030;">HARD WORK</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
        </div>
    </div>

</asp:Content>
