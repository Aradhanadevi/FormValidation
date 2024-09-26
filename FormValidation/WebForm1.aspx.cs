using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormValidation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string pattern = "(0|91)?[6-9][0-9]{9}";
            if(System.Text.RegularExpressions.Regex.IsMatch(args.Value, pattern))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}