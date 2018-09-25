<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="InterestReg.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Search TLDs</h1>
    <div class="content">
        <div class="search">
            <div class="searchbox">
                <asp:TextBox runat="server" CssClass="searchbox" placeholder="Search TLDs" ID="tldSearchBox" OnTextChanged="searchboxText_Changed"></asp:TextBox>
            </div>
            <div class="tldView">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="tldGrid" DataSourceID="SearchData">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox CssClass="checkbox" ID="interestSelect" runat="server"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TLDName" HeaderText="TLD Name" SortExpression="TLDName" />
                            <asp:BoundField DataField="TLDPrice" HeaderText="Price" DataFormatString="{0:c}" SortExpression="TLDPrice" />
                        </Columns>
                    </asp:GridView>
                <asp:SqlDataSource ID="SearchData" runat="server" ConnectionString="<%$ ConnectionStrings:FasthostsTLDShopConnectionString %>" SelectCommand="SELECT [TLDName], [TLDPrice] FROM [TLD]"></asp:SqlDataSource>
                <asp:Button ID="btn_Submit" runat="server" Text="Submit" BackColor="#0099FF" ForeColor="White" Width="250px" OnClick="btn_Submit_Clicked" />
            </div>
        </div>
    </div>
</asp:Content>

