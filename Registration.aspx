<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            color: #000099;
            font-size: 30pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table class="style1" cellspacing="0">
        <tr>
            <td class="style7" colspan="3" bgcolor="#FFCCCC">
                <span class="style9"><strong><em>REGISTRATION FORM</em></strong></span><br />
                <asp:Image ID="Image3" runat="server" Height="206px" 
                    ImageUrl="~/image/registericonpatrol.png" Width="208px" />
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Username</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox1" runat="server" Width="80%" Height="25px"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox1_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" TargetControlID="TextBox1" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*Fill Your Name" ForeColor="Red" 
                    ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                <asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" 
                    WatermarkText="Enter Your Name">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Password</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" 
                    Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox2_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox2" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" 
                    Enabled="True" TargetControlID="TextBox2">
                </asp:PasswordStrength>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox2" 
                    WatermarkText="Make Password">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Confirm Password</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" TextMode="Password" 
                    Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox3_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox3" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox3_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox3" 
                    WatermarkText="Re Enter Password">
                </asp:TextBoxWatermarkExtender>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="*Password Do not Match" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Gender</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="MALE" GroupName="a" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="FEMALE" GroupName="a" />
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Email Id</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox4_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox4" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:TextBoxWatermarkExtender ID="TextBox4_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox4" 
                    WatermarkText="Enter Your Email">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Pincode</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox5_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox5" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox5_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox5" 
                    WatermarkText="Enter Pincode">
                </asp:TextBoxWatermarkExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Pincode" ForeColor="Red" 
                    ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Address</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox6_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox6" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox6_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox6" 
                    WatermarkText="Enter Your Address">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Marital Status</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Date Of Birth</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox7_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox7" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox7_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox7" 
                    WatermarkText="Enter DOB">
                </asp:TextBoxWatermarkExtender>
                <asp:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox7">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Highest Qualification</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="80%">
                    <asp:ListItem>&lt;----Choose----&gt;</asp:ListItem>
                    <asp:ListItem>Intermediate</asp:ListItem>
                    <asp:ListItem>HighSchool</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Post Graduate</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RoundedCornersExtender ID="DropDownList1_RoundedCornersExtender" 
                    runat="server" BorderColor="Black" Enabled="True" Radius="10" 
                    TargetControlID="DropDownList1">
                </asp:RoundedCornersExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Mobile No1</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox8_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox8" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox8_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox8" 
                    WatermarkText="Enter Mobile Number">
                </asp:TextBoxWatermarkExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*Enter Mobile Number " 
                    ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Mobile No2</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox9_RoundedCornersExtender" runat="server" 
                    BorderColor="Black" Enabled="True" TargetControlID="TextBox9" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox9_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox9" 
                    WatermarkText="Enter Second Mobile Number">
                </asp:TextBoxWatermarkExtender>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*Enter Mobile Number " 
                    ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Aaddhar Number</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox10" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox10_RoundedCornersExtender" 
                    runat="server" BorderColor="Black" Enabled="True" 
                    TargetControlID="TextBox10" Radius="10">
                </asp:RoundedCornersExtender>
                <asp:TextBoxWatermarkExtender ID="TextBox10_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox10" 
                    WatermarkText="Enter UIID or Aaddhar Number">
                </asp:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>PAN Number</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox11" runat="server" Height="25px" Width="80%"></asp:TextBox>
                <asp:TextBoxWatermarkExtender ID="TextBox11_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox11" 
                    WatermarkText="Enter Pan Number">
                </asp:TextBoxWatermarkExtender>
                <asp:RoundedCornersExtender ID="TextBox11_RoundedCornersExtender" 
                    runat="server" BorderColor="Black" Enabled="True" 
                    TargetControlID="TextBox11" Radius="10">
                </asp:RoundedCornersExtender>
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                <strong>Profile Picture</strong></td>
            <td bgcolor="#FFCCCC">
                :</td>
            <td bgcolor="#FFCCCC">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="80%" />
            </td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#FFCCCC">
                Type</td>
            <td bgcolor="#FFCCCC">
                &nbsp;</td>
            <td bgcolor="#FFCCCC">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" bgcolor="#FFCCCC">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Register" 
                    BackColor="#993333" ForeColor="White" Height="37px" onclick="Button1_Click" 
                    Width="310px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="RESET" BackColor="#993333" 
                    ForeColor="White" Height="38px" onclick="Button2_Click" Width="359px" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


