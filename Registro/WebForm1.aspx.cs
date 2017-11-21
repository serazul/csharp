

namespace Registro
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Registro.Models;
    using System.Web.ModelBinding;
    using System.IO;
    using System.IO.Pipes;
    using System.Threading;
    using System.Threading.Tasks;
    using Newtonsoft.Json;

    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void _binddataObject()
        {
            UserData dataObject = new UserData();
            if (TryUpdateModel(dataObject, new FormValueProvider(ModelBindingExecutionContext)))
            {
              var data =  DataText.InnerText = String.Format("Nombre: {0}, Apellido: {1}, Email: {2}, Zip: {3}, Genero: {4}, Pais: {5}",
                    dataObject.Nombre, dataObject.Apellido, dataObject.Email, dataObject.Zip, dataObject.Genero, dataObject.Pais);


                

                using (StreamWriter file = File.CreateText(@"c:\data.json"))
                    {
                       JsonSerializer serializer = new JsonSerializer();
                        serializer.Serialize(file, data);
                    }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            _binddataObject();
        }
         
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }

     
}
}