using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Student_Registration_Form
{
    public class Student
    {
        const string connectionString = "Data Source=DESKTOP-AHUUF4M;Initial Catalog=RB_project_db;Integrated Security=True;";
        
        public int AddStd(string fname, string lname, string cls, string roll, string percentage)
        {
            SqlConnection con;
            int val =-1;
            con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("dbo.AddStudents", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@firstname", SqlDbType.NVarChar).Value = fname;
                cmd.Parameters.Add("@lastname", SqlDbType.NVarChar).Value = lname;
                cmd.Parameters.Add("@cls", SqlDbType.NVarChar).Value = cls;
                cmd.Parameters.Add("@roll", SqlDbType.NVarChar).Value = roll;
                cmd.Parameters.Add("@percentage", SqlDbType.NVarChar).Value = percentage;

                val = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.Write(ex);
            }
            finally
            {
                con.Close();
            }
            return val;

        }

        public DataTable getData()
        {
            SqlConnection con;
            DataTable dt = null;
            con = new SqlConnection(connectionString);

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("dbo.getdata", con)
                {
                    CommandType = CommandType.StoredProcedure
                };

                SqlDataAdapter sda = new SqlDataAdapter();
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                dt = new DataTable();
                sda.Fill(dt);

                con.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.Write(ex);
            }
            return dt;
        }

    }
}