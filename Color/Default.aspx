<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap-modal-wrapper-factory.min.js"></script>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    
    <script>
        $(document).ready(function () {
            var title = 'Colour Visualizer';
            $('#btnColor').click(function () {
                BootstrapModalWrapperFactory.createAjaxPopup(title, '/ColourVisualizer.aspx', true, true, {});
            });
            return false;
        });
    </script>
</head>
<body>
    <form runat="server">
        <button id="btnColor" type="button">Color Visualizer</button>
    </form>

</body>
</html>
