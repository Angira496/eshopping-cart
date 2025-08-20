<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!---image slider---->
    <div class="container">
        <h2>Carousel Example</h2>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="<%= Page.ResolveUrl("~/ImgSlider/1.jpg") %>" alt="Los Angeles" style="width: 100%;" />

                    <div class="carousel-caption">
                        <h3>On mobile you can get</h3>
                        <p>25% off</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Buy Now</a></p>
                    </div>
                </div>

                <div class="item">
                    <img src="<%= Page.ResolveUrl("~/ImgSlider/2.jpg") %>" alt="Chicago" style="width: 100%;" />
                    <div class="carousel-caption">
                        <h3>Women Shopping</h3>
                        <p>50% off</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<%= Page.ResolveUrl("~/ImgSlider/3.jpg") %>" alt="New york" style="width: 100%;" />
                    <div class="carousel-caption">
                        <h3>Acce moble Shopping</h3>
                        <p>20% off</p>
                    </div>
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next</span> </a>
        </div>
    </div>
    <!---image slider End---->
    <br />
    <br />
    <br />
    <br />

    <h2>Welcome Admin !...</h2>
</asp:Content>
