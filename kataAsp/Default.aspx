<%@ Page Language="C#" Inherits="kataAsp.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
    <script runat="server">

        protected void Button1_Click(object sender, System.EventArgs e) {
            kataAsp.KataGame game = new kataAsp.KataGame(int.Parse(singleSentence.Text), int.Parse(bothSentence.Text), int.Parse(bothNoSentence.Text));
            game.SetNamePrisonerOne(textBox1.Text);
            game.SetNamePrisonerTwo(textBox2.Text);
            
            game.SetNamePrisonerOneTestification(CheckBox1.Checked);
            game.SetNamePrisonerTwoTestification(CheckBox2.Checked);

            game.SetPrisonersVerdicts();

            matriz.Visible = true;
            prisonerOneLabel.Text = "Prisoner one(" + textBox1.Text + ")";
            prisonerTwoLabel.Text = "Prisoner two(" + textBox2.Text + ")";

            labelResultado.Text = "Resultado:" + game.GetPrisonersVerdictsAsStringWithSlashDelimiter();

        }

</script>

</head>
<body>
	<form id="form1" runat="server">

         <asp:Table runat="server">
            
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label runat="server" Text="Sentence Single Prisoner:"/>
                     <asp:TextBox id="singleSentence" runat="server" Text="10"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label runat="server" Text="Sentence Both Confess Years Of Sentence:"/>
                     <asp:TextBox id="bothSentence" runat="server" Text="5"/>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label runat="server" Text="Sentence Both No Confess Years Of Sentence:"/>
                     <asp:TextBox id="bothNoSentence" runat="server" Text ="1"/>
                </asp:TableCell>
            </asp:TableRow>

         </asp:Table><br />

        <asp:Table runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell></asp:TableHeaderCell>
                <asp:TableHeaderCell>Testification</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:Label id="label1" runat="server" Text="Prisoner's one name:"/>
                     <asp:TextBox id="textBox1" runat="server" EnableViewState="true" ViewStateMode="Enabled"/>
                </asp:TableCell><asp:TableCell>
                    <asp:CheckBox id="CheckBox1" runat="server"/>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                     <asp:Label id="label2" runat="server" Text="Prisoner's two name:"/>
                     <asp:TextBox id="textBox2" runat="server"/>
                </asp:TableCell><asp:TableCell>
                    <asp:CheckBox id="CheckBox2" runat="server"/>
                </asp:TableCell></asp:TableRow></asp:Table><br />
        <asp:Button id="button1" runat="server" Text="Print Result!" OnClick="Button1_Click" />
        <br><br>
        <asp:Label id="label3" runat="server" Text="Matriz:"/>
        <br />
        <asp:Table ID="matriz" runat="server" GridLines="Both" Visible="False">

                 <asp:TableRow>
                    <asp:TableCell>                                           
                        </asp:TableCell><asp:TableCell>                     
                        </asp:TableCell><asp:TableCell>
                            <asp:Label id="prisonerTwoLabel" runat="server" Text="Prisoner two()"/>                       
                        </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>                                           
                        </asp:TableCell>
                        <asp:TableCell> 
                                                
                        </asp:TableCell><asp:TableCell>
                            <asp:Label id="Label4" runat="server" Text="No Confiesa"/>                       
                     </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>                                           
                        </asp:TableCell><asp:TableCell>                     
                        </asp:TableCell><asp:TableCell>                     
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label id="prisonerOneLabel" runat="server" Text="Prisoner one"/>                     
                    </asp:TableCell> 
                    <asp:TableCell>
                        <asp:Label id="prisonerLaber11" runat="server" Text=""/>                      
                    </asp:TableCell> 
                    <asp:TableCell>
                        <asp:Label id="prisonerLaber12" runat="server" Text=""/>                 
                    </asp:TableCell>
                </asp:TableRow>

        </asp:Table><br><br>
        <asp:Label id="labelResultado" runat="server" Text="Resultado:"/>
	</form>
</body>
</html>
