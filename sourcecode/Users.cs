using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace YellowMotors
{
    public class Users
    {
        string connectionString = ConfigurationManager.ConnectionStrings["cdb-connection"].ConnectionString;
        SqlConnection connection;

        public string login(string userid, string password)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "SELECT * FROM tblUsers WHERE userID='" + userid + "' AND password='" + password + "'";

            SqlCommand command = new SqlCommand(query, connection);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.HasRows && reader.Read())
                {
                    string name = reader.GetString(1);
                    connection.Close();
                    return name;
                }
                else
                {
                    connection.Close();
                    return null;
                }
            }
        }

        public void saveUser(string userId, string email, string name, string password)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "INSERT INTO tblUsers(userID, name, password, emailAddress) VALUES('" +
                userId + "','" +
                name + "','" +
                password + "','" +
                email + "')";
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}