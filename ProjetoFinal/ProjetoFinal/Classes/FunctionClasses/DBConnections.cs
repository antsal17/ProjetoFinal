using ProjetoFinal.Classes.FunctionClasses;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjetoFinal.FunctionClasses
{
    public class DBConnections
    {
        //Inserir Registo
        public static string insereRegisto(string username, string nome, string apelido, string telefone, string nif, string foto,string pass,string email, string id_tipoUtilizador)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@username", username);
            myCommand.Parameters.AddWithValue("@nome", nome);
            myCommand.Parameters.AddWithValue("@apelido", apelido);
            myCommand.Parameters.AddWithValue("@telefone", telefone);
            myCommand.Parameters.AddWithValue("@nif", nif);
            myCommand.Parameters.AddWithValue("@foto", foto);
            myCommand.Parameters.AddWithValue("@pass", PassEncrypt.EncryptString(pass));
            myCommand.Parameters.AddWithValue("@email", email);
            myCommand.Parameters.AddWithValue("@idTipoUtilizador", id_tipoUtilizador);
            

            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_registo_utilizador";

            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;
            valor.Size = 1;


            myCommand.Parameters.Add(valor);
            myCommand.Connection = myConn;
            try
            {
                myConn.Open();

                myCommand.ExecuteNonQuery();

                string resposta = myCommand.Parameters["@retorno"].Value.ToString();

                return resposta;

            }
            catch (Exception m)
            {
                return m.ToString();
            }
            finally
            {
                myConn.Close();
            }
        }
    }
}