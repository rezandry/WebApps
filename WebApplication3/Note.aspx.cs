using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Note : Page
    {
        SQLiteConnection con;
        SQLiteCommand cmd;
        SQLiteDataAdapter DB;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable();
        string createTableQuery = "CREATE TABLE IF NOT EXISTS note (ID integer primary key AUTOINCREMENT, Title VARCHAR(50), Keyword VARCHAR(200))";

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SQLiteConnection(@"Data Source=/mydb.sqlite");
            con.Open();
            cmd = new SQLiteCommand(createTableQuery, con);
            cmd.ExecuteNonQuery();
            con.Close();
            if (!IsPostBack)
            {
                LoadData();
            }

        }

        private void LoadData()
        {
            con.Open();
            cmd = con.CreateCommand();
            string CommandText = "SELECT * FROM note";
            DB = new SQLiteDataAdapter(CommandText, con);
            DS.Reset();
            DB.Fill(DS);
            DT = DS.Tables[0];
            Grid.DataSource = DT;
            Grid.DataBind();
            con.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = "INSERT INTO note (title, keyword) values ('" + tbtitle.Text.Trim() + "','" + tbkeyword.Text.Trim() + "')";
            cmd.ExecuteNonQuery();
            tbtitle.Text = "";
            tbkeyword.Text = "";
            con.Close();
            LoadData();
        }

        protected void Grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                GridViewRow row = (GridViewRow)Grid.Rows[e.RowIndex];
                var id = row.Cells[1].Text.ToString();
                con.Open();
                cmd = new SQLiteCommand("DELETE FROM note WHERE id=" + id + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
                LoadData();
            }
        }

        protected void Grid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            var id = Grid.Rows[e.NewEditIndex].Cells[1].Text.ToString();
            LoadData();
        }

        protected void Grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Grid.EditIndex = -1;
            LoadData();
        }

        protected void Grid_RowUpdating (object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = Grid.Rows[e.RowIndex];
            con.Open();
            cmd = new SQLiteCommand("update note set title = '" + ((TextBox)(row.Cells[2].Controls[0])).Text + "', keyword = '" + ((TextBox)(row.Cells[3]).Controls[0]).Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Grid.EditIndex = -1;
            LoadData();
        }
    }
}