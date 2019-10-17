<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kontrol6.aspx.cs" Inherits="Project_1.dasar.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="wzSatu" runat="server" ActiveStepIndex="0" >
                <WizardSteps>
                    <asp:WizardStep ID="wzs1" Title="Step1" runat="server">
                        <h2>Step 1</h2>
                        <p>Ini adalah step pertama</p>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzs2" Title="Step2" runat="server">
                        <h2>Step 2</h2>
                        <p>Ini adalah step kedua</p>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzs3" Title="Step3" runat="server">
                        <h2>Step 3</h2>
                        <p>Ini adalah step ketiga</p>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzsAkhir" StepType="Finish" Title="Finish" runat="server">
                        <h2>Terakhir</h2>
                        <p>Ini adalah tahap terakhir</p>
                    </asp:WizardStep>
                    <asp:WizardStep ID="wzsComplete" StepType="Complete" Title="Complete" runat="server">
                        <h2>Complete</h2>
                        <p>Complete</p>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
