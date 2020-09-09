using ProjetoFinal.Classes.FunctionClasses;
using ProjetoFinal.Classes.ObjectClasses;
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
        public static string insereRegisto(string username, string nome, string apelido, string telefone, string nif, string foto, string pass, string email, string id_tipoUtilizador, bool ativo)
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
            myCommand.Parameters.AddWithValue("@ativo", ativo);


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

        //Verifica se o utilizador existe na base de Dados ( Login )
        public static (string, Utilizador) verificaLogin(string email_user, string pass)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myComand = new SqlCommand();

            myComand.Parameters.AddWithValue("@email_Username", email_user);
            myComand.Parameters.AddWithValue("@pw", PassEncrypt.EncryptString(pass));

            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;
            valor.Size = 1;



            myComand.Parameters.Add(valor);


            myComand.CommandType = CommandType.StoredProcedure;
            myComand.CommandText = "usp_verifica_login";

            myComand.Connection = conn;

            try
            {
                conn.Open();
                var reader = myComand.ExecuteReader();

                Utilizador utilizador = new Utilizador();

                while (reader.Read())
                {
                    utilizador.id = reader.GetInt32(0);
                    utilizador.nome = reader.GetString(1);
                    utilizador.apelido = reader.GetString(2);
                    utilizador.telefone = reader.GetString(3);
                    utilizador.nif = reader.GetString(4);
                    utilizador.ativo = reader.GetBoolean(5);
                    utilizador.dataRegisto = reader.GetDateTime(6);
                    utilizador.foto = reader.GetString(7);
                    utilizador.id_tipoUtilizador = reader.GetInt32(8).ToString();
                    utilizador.username = reader.GetString(10);
                    utilizador.email = reader.GetString(11);
                }

                reader.Close();

                string retorno = myComand.Parameters["@retorno"].Value.ToString();

                return (retorno, utilizador);

            }

            catch (Exception m)
            {
                return (m.ToString(), null);
            }
            finally
            {
                conn.Close();
            }
        }

        //ativacao de conta pretende-se que a conta seja ativada via email
        public static string ativacaoConta(string id_utilizador)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", id_utilizador);
            


            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_ativa_conta";

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

        //recuperacao de pw atraves de link de email
        public static (string, string) recuperacaoPW(string email_user)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@email", email_user);



            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_recupera_pw";

            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@id";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;
            valor.Size = 1;

            SqlParameter valor2 = new SqlParameter();
            valor2.ParameterName = "@nome";
            valor2.Direction = ParameterDirection.Output;
            valor2.SqlDbType = SqlDbType.NVarChar;
            valor2.Size = 50;


            myCommand.Parameters.Add(valor);
            myCommand.Parameters.Add(valor2);
            myCommand.Connection = myConn;
            try
            {
                myConn.Open();

                myCommand.ExecuteNonQuery();

                string id = myCommand.Parameters["@id"].Value.ToString();
                string nome = myCommand.Parameters["@nome"].Value.ToString();

                return (id,nome);

            }
            catch (Exception m)
            {
                return (m.ToString(),"");
            }
            finally
            {
                myConn.Close();
            }
        }


        //depois de ser enviado link por email o utilizador pode fazer a recuperacao da pw
        public static  string recuperacaoPWInsercao(string id, string pass)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", id);
            myCommand.Parameters.AddWithValue("@pass", pass);



            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_insere_pw_recuperacao";

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

                string retorno = myCommand.Parameters["@retorno"].Value.ToString();


                return retorno;

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

        //altera a palavra pass, recebendo a pw antiga e a nova
        public static string alteracaoPW(int id, string Oldpass, string Newpass)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", id);
            myCommand.Parameters.AddWithValue("@Oldpass", Oldpass);
            myCommand.Parameters.AddWithValue("@Newpass", Newpass);



            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_altera_pw";

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

                string retorno = myCommand.Parameters["@retorno"].Value.ToString();


                return retorno;

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