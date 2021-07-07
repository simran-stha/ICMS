<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="ICMS.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> all employess details </h1>

        </div>
        <asp:Label ID="Labelmaintitle" runat="server" BackColor="#990099" Font-Bold="True" Font-Italic="True" ForeColor="White" Text="simran"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSourceEmpData" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmployeeID" DataSourceID="SqlDataSourceEmpData">
            <AlternatingItemTemplate>
                <li style="background-color: #FAFAD2;color: #284775;">EmployeeID:
                    <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    <br />
                    Dept:
                    <asp:Label ID="DeptLabel" runat="server" Text='<%# Eval("Dept") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #FFCC66;color: #000080;">EmployeeID:
                    <asp:Label ID="EmployeeIDLabel1" runat="server" Text='<%# Eval("EmployeeID") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Dept:
                    <asp:TextBox ID="DeptTextBox" runat="server" Text='<%# Bind("Dept") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />Dept:
                    <asp:TextBox ID="DeptTextBox" runat="server" Text='<%# Bind("Dept") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #FFFBD6;color: #333333;">EmployeeID:
                    <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    <br />
                    Dept:
                    <asp:Label ID="DeptLabel" runat="server" Text='<%# Eval("Dept") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">EmployeeID:
                    <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    <br />
                    Dept:
                    <asp:Label ID="DeptLabel" runat="server" Text='<%# Eval("Dept") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceEmpData" runat="server" ConnectionString="<%$ ConnectionStrings:ICMSwebConnectionString %>" SelectCommand="SELECT [EmployeeID], [Name], [Gender], [Dept] FROM [Employee]"></asp:SqlDataSource>
    </form>
</body>
</html>
