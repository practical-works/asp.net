using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace gridview
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\AMBRATOLM_SQL;Initial Catalog=SGBD1_TP06;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnx.Open();
            int Matricule = Convert.ToInt32(((TextBox)(GridView1.FooterRow.Cells[0].FindControl("TextBox1"))).Text);
            string Nom = ((TextBox)(GridView1.FooterRow.Cells[1].FindControl("TextBox2"))).Text;
            string Prenom = ((TextBox)(GridView1.FooterRow.Cells[2].FindControl("TextBox3"))).Text;
            string Fonction = ((TextBox)(GridView1.FooterRow.Cells[3].FindControl("TextBox4"))).Text;
            decimal Salaire = Convert.ToDecimal(((TextBox)(GridView1.FooterRow.Cells[4].FindControl("TextBox5"))).Text);
            int Departement = Convert.ToInt32(((DropDownList)(GridView1.FooterRow.Cells[5].FindControl("DropDownList1"))).Text);
            cmd = new SqlCommand("insert into Employés values (@Matricule,@Nom,@Prénom,@Fonction,@Salaire,@Département)", cnx);
            cmd.Parameters.AddWithValue("@Matricule", Matricule);
            cmd.Parameters.AddWithValue("@Nom", Nom);
            cmd.Parameters.AddWithValue("@Prénom", Prenom);
            cmd.Parameters.AddWithValue("@Fonction", Fonction);
            cmd.Parameters.AddWithValue("@Salaire", Salaire);
            cmd.Parameters.AddWithValue("@Département", Departement);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
            cnx.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Pas ici !!! [Modifier]
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            // Ici xD [Mettre à jour]

            cmd = new SqlCommand(@"update Employés 
                                   set Nom=@Nom,
                                   Prénom=@Prénom,
                                   Fonction=@Fonction,
                                   Salaire=@Salaire,
                                   Département=@Département 
                                   where Matricule=@Matricule", cnx);
            cnx.Open();

            // transformer les champs en template 

            cmd.Parameters.AddWithValue("Matricule", ((Label)(GridView1.SelectedRow.FindControl("Label1"))).Text);
            cmd.Parameters.AddWithValue("Nom", ((TextBox)(GridView1.SelectedRow.FindControl("TextBox1"))).Text);
            cmd.Parameters.AddWithValue("Prénom", ((TextBox)(GridView1.SelectedRow.FindControl("TextBox2"))).Text);
            cmd.Parameters.AddWithValue("Fonction", ((TextBox)(GridView1.SelectedRow.FindControl("TextBox3"))).Text);
            cmd.Parameters.AddWithValue("Salaire", ((TextBox)(GridView1.SelectedRow.FindControl("TextBox4"))).Text);
            cmd.Parameters.AddWithValue("Département", ((DropDownList)(GridView1.SelectedRow.FindControl("DropDownList2"))).Text);
            cmd.ExecuteNonQuery();
            cnx.Close();
            Response.Redirect(Request.RawUrl);
            SqlDataSource1.UpdateParameters["Nom"].DefaultValue = ((TextBox)(GridView1.SelectedRow.FindControl("TextBox2"))).Text;
            SqlDataSource1.UpdateParameters["Prénom"].DefaultValue = ((TextBox)(GridView1.SelectedRow.FindControl("TextBox3"))).Text;
            SqlDataSource1.UpdateParameters["Fonction"].DefaultValue = ((TextBox)(GridView1.SelectedRow.FindControl("TextBox4"))).Text;
            SqlDataSource1.UpdateParameters["Salaire"].DefaultValue = ((TextBox)(GridView1.SelectedRow.FindControl("TextBox5"))).Text;
            SqlDataSource1.UpdateParameters["Département"].DefaultValue = ((DropDownList)(GridView1.SelectedRow.FindControl("DropDownList1"))).Text;
            SqlDataSource1.UpdateParameters["Matricule"].DefaultValue = ((TextBox)(GridView1.SelectedRow.FindControl("TextBox1"))).Text;
            SqlDataSource1.Update();
        }
    }
}