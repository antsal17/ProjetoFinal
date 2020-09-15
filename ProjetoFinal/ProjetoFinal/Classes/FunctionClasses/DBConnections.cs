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
        //-------------------------------------------Login -----------------------------------------------
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

                return (id, nome);

            }
            catch (Exception m)
            {
                return (m.ToString(), "");
            }
            finally
            {
                myConn.Close();
            }
        }


        //depois de ser enviado link por email o utilizador pode fazer a recuperacao da pw
        public static string recuperacaoPWInsercao(string id, string pass)
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



        //--------------------------Produtos ----------------------------------------------------------------------
        //inserir produto
        public static string insereProduto(string nome, string descricao, bool status, int qtd, double preco, int id_categoria, string fotoMain, string foto1, string foto2, string foto3, int idUser, int idMorada)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@nome", nome);
            myCommand.Parameters.AddWithValue("@descricao", descricao);
            myCommand.Parameters.AddWithValue("@ativo", status);
            myCommand.Parameters.AddWithValue("@qtd", qtd);
            myCommand.Parameters.AddWithValue("@preco", preco);
            myCommand.Parameters.AddWithValue("@id_categoria", id_categoria);
            myCommand.Parameters.AddWithValue("@fotoMain", fotoMain);
            myCommand.Parameters.AddWithValue("@foto1", foto1);
            myCommand.Parameters.AddWithValue("@foto2", foto2);
            myCommand.Parameters.AddWithValue("@foto3", foto3);
            myCommand.Parameters.AddWithValue("@idUser", idUser);
            myCommand.Parameters.AddWithValue("@idMorada", idMorada);


            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_addProduto";

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


        //-------------------------------------- Clientes --------------------------------------------------------
        public static string eliminaClienteAdmin(string id)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", Convert.ToInt32(id));

            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_elimina_clientes_admim";

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

        public static Utilizador DevolveClienteDetailAdmin(string id)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();
            myCommand.Connection = myConn;
            myCommand.Parameters.AddWithValue("@id", id);

            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_lista_clienteDetail_admim";

            try
            {
                myConn.Open();
                var reader = myCommand.ExecuteReader();

                Utilizador p = new Utilizador();

                while (reader.Read())
                {
                    p.id = reader.GetInt32(0);
                    p.nome = reader.GetString(1);
                    p.apelido = reader.GetString(2);
                    p.telefone = reader.GetString(3);
                    p.nif = reader.GetString(4);
                    p.ativo = reader.GetBoolean(5);
                    p.dataRegisto = reader.GetDateTime(6);
                    p.foto = reader.GetString(7);
                    p.id_tipoUtilizador = Convert.ToString(reader.GetInt32(8));
                    p.username = reader.GetString(9);
                    p.email = reader.GetString(10);
                }
                return p;



            }
            catch (Exception m)
            {
                return null;
            }
            finally
            {
                myConn.Close();
            }
        }

        public static string atualizarClienteAdmin(string id, string username, string nome, string apelido, string telefone, string foto, string email, string id_tipoUtilizador, bool ativo)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", id);
            myCommand.Parameters.AddWithValue("@username", username);
            myCommand.Parameters.AddWithValue("@nome", nome);
            myCommand.Parameters.AddWithValue("@apelido", apelido);
            myCommand.Parameters.AddWithValue("@telefone", telefone);
           
            myCommand.Parameters.AddWithValue("@foto", foto);
            
            myCommand.Parameters.AddWithValue("@email", email);
            myCommand.Parameters.AddWithValue("@idTipoUtilizador", id_tipoUtilizador);
            myCommand.Parameters.AddWithValue("@ativo", ativo);


            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_atualiza_utilizador_admin";

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


        public static string insereMoradaClienteAdmin(string id, string city, bool defa, string zipCode, string locality, string adress, string description, string lat, string lon)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@id", id);
            myCommand.Parameters.AddWithValue("@city", city);
            myCommand.Parameters.AddWithValue("@default", defa);
            myCommand.Parameters.AddWithValue("@zipCode", zipCode);
            myCommand.Parameters.AddWithValue("@locality", locality);

            myCommand.Parameters.AddWithValue("@adress", adress);

            myCommand.Parameters.AddWithValue("@description", description);
            myCommand.Parameters.AddWithValue("@lat", lat);
            myCommand.Parameters.AddWithValue("@lon", lon);


            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_adiciona_morada_utilizador_admin";

            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;
            valor.Size = 100000;


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

        public static string eliminaMoradaClienteAdmin(string idCliente, string idMorada)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@idUtilizador", idCliente);
            myCommand.Parameters.AddWithValue("@idMorada", idMorada);



            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_elimina_morada_utilizador_admin";

            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;
            valor.Size = 100000;


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

        public static Morada listaMoradaClienteAdmin(string idCliente, string idMorada)
        {
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjetoFinalConnectionString"].ConnectionString);

            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@idUtilizador", idCliente);
            myCommand.Parameters.AddWithValue("@idMorada", idMorada);



            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "usp_lista_morada_utilizador_admin";

            try
            {
                myConn.Open();
                var reader = myCommand.ExecuteReader();

                Morada m = new Morada();

                while (reader.Read())
                {
                    //m.cidade = reader.GetInt32(0);
                    //m.def = reader.GetString(1);
                    //m.descricao = reader.GetString(2);
                    //m.lat= reader.GetString(3);
                    //m.localidade
                    //m.lon
                    //m.rua
                    //m.zip
                    
                }
                return m;



            }
            catch (Exception m)
            {
                return null;
            }
            finally
            {
                myConn.Close();
            }
        }


    }
}