using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDT_Assignment_3{

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // In a real application, you would process the form data here
        // For example, send an email or save to database
        
        // Display success message
        lblResult.Text = "Thank you for your message. We will contact you soon!";
        
        // Clear form fields
        txtName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtSubject.Text = string.Empty;
        txtMessage.Text = string.Empty;
    }
}
}
