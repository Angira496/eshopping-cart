<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AdminPages_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function ShowPopup(name) {
            $("#MyPopup #lblMsg").html(name);
            $("#MyPopup").modal("show");
        }
        function pageRefresh() {
            if (window.history.replaceState) {
                window.history.replaceState(null, null, window.location.href);
            }
        }
    </script>
    <style type="text/css">
        .PagerCSS a {
            padding: 5px;
            background-color: #000;
            color: #fff;
            text-decoration: none;
            border: solid 1px #AAE;
            font-weight: bold;
            font-size: 12pt;
        }

        .PagerCSS span {
            color: #fff;
            font-weight: bold;
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="MyPopup" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <%--<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title"></h4>
                </div>--%>
                <div class="modal-body">
                    <span id="lblMsg" style="font-weight: bold"></span>
                    <br />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="pageRefresh()">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="form-horizontal">

            <br />
            <br />
            <h2>Add Product</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Proudct Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>



            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Product Details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Materials and Care"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                </div>
            </div>



            <div class="form-group">
                <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chFD" runat="server" />
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="ch30Ret" runat="server" />
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbCOD" runat="server" />
                </div>
            </div>


            <div class="form-group">
                <div class="col-md-2 "></div>
                <div class="col-md-6 ">

                    <asp:Button ID="btnAdd" CssClass="btn btn-success " runat="server" Text="ADD Product" OnClick="btnAdd_Click" />

                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <hr />
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2>Product Report</h2>
            </div>
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="table table-responsive">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false" CellPadding="4" PageSize="10"
                                ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                                <PagerStyle CssClass="PagerCSS" />
                                <Columns>
                                    <asp:BoundField DataField="PID" HeaderText="S.No." />
                                    <asp:BoundField DataField="PName" HeaderText="PName" />
                                    <asp:BoundField DataField="PPrice" HeaderText="Price" />
                                    <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" />
                                    <asp:BoundField DataField="Brand" HeaderText="Brand" />
                                    <asp:BoundField DataField="CatName" HeaderText="Category" />
                                    <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />

                                    <asp:BoundField DataField="Gender" HeaderText="gender" />
                                    <asp:BoundField DataField="SizeName" HeaderText="SizeName" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />

                                    <%--<asp:TemplateField HeaderText="Photo">
                                        <ItemTemplate>
                                            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style="height: 150px; width: 150px;" />
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <%--<asp:CommandField ShowEditButton="true" />
                                    <asp:CommandField ShowDeleteButton="true" />--%>
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"></PagerStyle>
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>
    </div>
</asp:Content>
