namespace kataAsp
{

    public partial class Default : System.Web.UI.Page
    {
        public int arithmeticOperation(string operation, int operandOne, int operandTwo)
        {
            if (operation.Equals("+"))
            {
                return operandOne + operandTwo;
            }
            else if (operation.Equals("-"))
            {
                return operandOne - operandTwo;
            }
            else if (operation.Equals("*"))
            {
                return operandOne * operandTwo;
            }
            else
                return operandOne / operandTwo;
        }

        public Prisoner nashPrisonerOne(string prisonerName)
        {
            var prisoner = new Prisoner();
            prisoner.Name = prisonerName;
            return prisoner;
        }
    }
}
