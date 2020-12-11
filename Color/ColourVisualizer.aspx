<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ColourVisualizer.aspx.cs" Inherits="ColourVisualizer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .visualizer-container {
           /* -webkit-box-shadow: 10px 10px 5px -10px rgba(0,0,0,0.75);
            -moz-box-shadow: 10px 10px 5px -10px rgba(0,0,0,0.75);
            box-shadow: 10px 10px 5px -10px rgba(0,0,0,0.75);*/
        }

            .visualizer-container .title {
                background-color: #0C4C85;
                color: white;
            }

            .visualizer-container .option-container {
                height: 100%;
                padding: 10px;
            }

        #artboard {
            max-height: 400px;
            height: 400px;
        }

        img {
            height: 100%;
            position: absolute;
            left: 50px;
            top: 50px;
        }

        .cv-swatch {
            position: relative;
            display: block;
            float: left;
            width: 44px;
            height: 44px;
            background-color: #000;
            border: 2px solid #fff;
            margin: 0 4px 4px 0;
            border-radius: 50px;
            cursor: pointer;
        }

            .cv-swatch.active {
                border-color: #0F72CF;
            }
    </style>
    <script>
        function changeImage(path) {
            debugger;
            //alert(path);
            var targetElement = $(event.target);
            var targetContainer = targetElement.parent();
            $('a.active', targetContainer).each(function () {
                $(this).removeClass('active');
            });

            targetElement.addClass('active');
            var imageId = targetContainer.attr('image-id');
            var image = $('#' + imageId);
            image.attr('src', path);
            //alert(imageId);
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container visualizer-container">
<%--            <div class="row">
                <div class="col-md-12 title">
                    <h3>Color Visualizer -
                    <asp:Label ID="lblProductTitle" runat="server"></asp:Label></h3>
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-3 option-container"" id="optionsContainer">
                    <asp:Repeater ID="OptionsFrame" runat="server" OnItemDataBound="OnItemDataBound">
                        <ItemTemplate>
                            <div>
                                <div class="row pb-2">
                                    <div class="col-md-12">
                                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("Id") %>' />
                                        <b>
                                            <asp:Label runat="server" Text='<%# Eval("Options.Title") %>' ID="optionLabel" />:
                                        </b>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 option-items-container" image-id='<%# Eval("Id") %>'>
                                        <asp:Repeater ID="OptionItems" runat="server" OnItemDataBound="OnOptionItemDataBound">
                                            <ItemTemplate>
                                                <a style = '<%# Eval("Background", "background:{0}") %>' href="#" class="cv-swatch" title='<%# Eval("LabelText") %>' onclick="return changeImage('<%# Eval("ValueImage") %>')">
                                                    <%--<asp:Label runat="server" Text='<%# Eval("LabelText") %>'></asp:Label>--%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-md-9">
                    <div id="artboard" class="cv-layers active">
                        <asp:Repeater ID="ImageFrame" runat="server">
                            <ItemTemplate>
                                <img id="<%# Eval("Id") %>" src="<%# Eval("Path") %>" />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
