<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KurCekme.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
  <h2>Merkez Bankası</h2>
  <p>Kur Bilgileri</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Dolar</th>
        <th>Euro</th>
        <th>Japon Yeni</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
            <asp:Label ID="dolar" runat="server" Text="Label"></asp:Label></td>
        <td><asp:Label ID="euro" runat="server" Text="Label"></asp:Label></td>
        <td><asp:Label ID="yen" runat="server" Text="Label"></asp:Label></td>
      </tr>
   
    </tbody>
  </table>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
</div>

    </form>
</body>
</html>
