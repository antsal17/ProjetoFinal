using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace ProjetoFinal.Classes.FunctionClasses
{
    public class EmailSending
    {
        public static void enviaEmailNovoUtilizador( string email, string id, string nome)
        {
            string userName=System.Configuration.ConfigurationManager.AppSettings.Get("Username");
            string passWord=System.Configuration.ConfigurationManager.AppSettings.Get("Password");
            MailMessage m=new MailMessage();
            SmtpClient sc=new SmtpClient();

            m.From=new MailAddress(userName);
            m.To.Add(new MailAddress(email));
            m.Subject="Registo Loja Online SHOOPPERS";
            m.IsBodyHtml=true;
            m.Body= menssagemAtivacao(id, nome);
            

            sc.Host=System.Configuration.ConfigurationManager.AppSettings.Get("Host"); ;
            sc.Port=Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings.Get("Port"));
            sc.Credentials=new System.Net.NetworkCredential(userName, passWord);
            System.Net.Mail.Attachment attachment;

            sc.EnableSsl=true;
            sc.Send(m);

        }

        private static string menssagemAtivacao(string id, string nome) {

            string mensagem=
                "<html>" +
                "<head></head>" +
       "<div class=''>" +
            "<div class='aHl'>" +
            "</div>" +
            "<div id=':o1' tabindex='-1'>" +
            "</div>" +
            "<div id=':oc' class='ii gt'>" +
                "<div id=':od' class='a3s aXjCH msg-4715494176736370387'>" +
                    "<u>" +
                    "</u>" +
                    "<div style='background-color:#f4f4f4'>" +
                        "<div style='background-color:#f4f4f4'>" +
                            "<div style='background:#8f23b3;background-color:#8f23b3;margin:0px auto;max-width:600px'>" +
                                "<table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#8f23b3;background-color:#8f23b3; width:100%'>" +
                                    "<tbody>" +
                                        "<tr>" +
                                            "<td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:8px;padding-top:8px;text-align:center'>" +
                                                "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>" +
                                                    "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'>" +
                                                        "<tbody>" +
                                                            "<tr>" +
                                                                "<td align='left' style='font-size:0px;padding:10px 25px;padding-right:40px;padding-left:40px;word-break:break-word'>" +
                                                                    "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-collapse:collapse;border-spacing:0px'>" +
                                                                        "<tbody>" +
                                                                            "<tr>" +
                                                                                "<td style='width:80px'>" +
                                                                                    "<a href='https://localhost:44304/Login/index.aspx' target='_blank' data-saferedirecturl='https://localhost:44304/Login/Login.aspx'>" +
                                                                                        "<img alt='Dott Logo' height='auto' src='https://ci5.googleusercontent.com/proxy/JaqFo2FfwiRHadz-tYSgY8twecv_urYTchjz_Ee0Cpv-Xs5nMZRGlRU88Zu-FoAO4tTrb6OceS_nzyN2xlxgPn4=s0-d-e1-ft#http://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/luhn.png' style='border:none;border-radius:px;display:block;outline:none;text-decoration:none;height:auto;width:100%;font-size:13px' width='80' class='CToWUd'>" +
                                                                                    "</a>" +
                                                                                "</td>" +
                                                                            "</tr>" +
                                                                        "</tbody>" +
                                                                    "</table>" +
                                                                "</td>" +
                                                            "</tr>" +
                                                        "</tbody>" +
                                                    "</table>" +
                                                "</div>" +
                                            "</td>" +
                                         "</tr>" +
                                      "</tbody>" +
                                  "</table>" +
                              "</div>" +
                              "<div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'>" +
                              "<table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'>" +
                                  "<tbody>" +
                                    "<tr>" +
                                        "<td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;padding-top:0px;text-align:center'>" +
                                            "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>" +
                                                "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'>" +
                                                    "<tbody>" +
                                                        "<tr>" +
                                                            "<td align='left' style='font-size:0px;padding:10px 25px;padding-top:48px;padding-right:40px;padding-bottom:24px;padding-left:40px;word-break:break-word'>" +
                                                                "<div style='font-family:Arial,sans-serif;font-size:13px;line-height:24px;text-align:left;color:#5e6977'><p style='line-height:36px;margin:10px 0;margin-top:10px'>" +
                                                                    "<span style='font-size:48px'>" +
                                                                        "<img goomoji='1f389' data-goomoji='1f389' style='margin:0 0.2ex;vertical-align:middle;max-height:24px' alt='🎉' src='https://mail.google.com/mail/e/1f389' data-image-whitelisted='' class='CToWUd'>" +
                                                                    "</span>" +
                                                                    "</p><p style='line-height:36px;margin:10px 0'> &nbsp;</p><p style='line-height:36px;margin:10px 0'>" +
                                                                        "<span style='color:#000000'><span style='font-size:30px'>" +
                                                                        "<b/>" +
                                                                            "<span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>Muito obrigado por se registar no Dott!</span>" +
                                                                            "</b></span></span></p><p style='line-height:36px;margin:10px 0'><span style='color:#000000'>" +
                                                                            "<span style='font-size:30px'>" +
                                                                            "<b/><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>Foi o primeiro ponto para uma bela amizade.</span>" +
                                                                            "</b></span></span></p><p style='line-height:36px;margin:10px 0'>" +
                                                                            "<span style='color:#8f23b3'><span style='font-size:30px'>" +
                                                                            "<b/><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'> Falta o segundo: ativar a sua conta!</span>" +
                                                                            "</b></span></span></p><p style='line-height:36px;margin:10px 0'><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>" +
                                                                            "<span style='font-size:12px'> Olá " + nome + " ,</span></span></p><p style='line-height:32px;margin:10px 0'>" +
                                                                            "<span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>" +
                                                                            "<span style='font-size:12px'> Obrigado por se registar no Dott.Por favor valide o email e comece já a explorar tudo o que temos para oferecer. Este é apenas o início de uma bela amizade.</span></span></p><p style='margin:10px 0'>" +
                                                                            "<span style='font-family:Montserrat,Helvetica,Arial,sans-serif'><span style='font-size:12px'> Vamos a isso? No Dott há um mundo de marcas para descobrir e uma experiência de compra sem igual.</span></span></p><p style='margin:10px 0;margin-bottom:10px'> &nbsp;</p>" +
                                                                  "</div>" +
                                                             "</td>" +
                                                        "</tr>" +
                                                   "</tbody>" +
                                               "</table>" +
                                            "</div>" +
                                        "</td>" +
                                    "</tr>" +
                                "</tbody>" +
                             "</table>" +
                          "</div>" +
                          "<div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'>" +
                            "<tbody>" +
                                "<tr>" +
                                    "<td style='direction:ltr;font-size:0px;padding:20px 0;text-align:center'>" +
                                        "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>" +
                                            "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'>" +
                                                "<tbody>" +
                                                    "<tr>" +
                                                        "<td align='center' style='background:#ffffff;font-size:0px;padding:10px 25px;padding-top:0px;padding-right:48px;padding-bottom:0px;padding-left:48px;word-break:break-word'>" +
                                                            "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-collapse:separate;line-height:100%'>" +
                                                                "<tbody>" +
                                                                    "<tr>" +
                                                                        "<td align='center' bgcolor='#9b26b6' role='presentation' style='border:none;border-radius:35px;background:#9b26b6' valign='middle'>" +
                                                                            "<a href='https://localhost:44304/Login/AccountUpdate.aspx?id=" + PassEncrypt.EncryptString(id) + "' style='display:inline-block;background:#9b26b6;color:#5e6977;font-family:Montserrat,Helvetica,Arial,sans-serif;font-size:13px;font-weight:normal;line-height:120%;margin:0;text-decoration:none;text-transform:none;padding:16px 25px 16px 25px;border-radius:35px' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx'>" +
                                                                                "<span style='color:#ffffff'>" +
                                                                                "<b/> ATIVAR CONTA</b></span>" +
                                                                             "</a>" +
                                                                         "</td>" +
                                                                      "</tr>" +
                                                                 "</tbody>" +
                                                             "</table>" +
                                                          "</td>" +
                                                      "</tr>" +
                                                  "</tbody>" +
                                              "</table>" +
                                          "</div>" +
                                     "</td>" +
                                 "</tr>" +
                             "</tbody>" +
                         "</table>" +
                     "</div>" +
                     "<div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'>" +
                     "<table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'>" +
                        "<tbody>" +
                            "<tr>" +
                                "<td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;padding-top:32px;text-align:center'>" +
                                    "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>" +
                                        "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'>" +
                                            "<tbody>" +
                                                "<tr>" +
                                                    "<td style='font-size:0px;padding:10px 25px;padding-right:40px;padding-left:40px;word-break:break-word'>" +
                                                        "<p style='border-top:solid 1px #e3eaee;font-size:1;margin:0px auto;width:100%'></p>" +
                                                    "</td>" +
                                                "</tr>" +
                                            "</tbody>" +
                                        "</table>" +
                                    "</div>" +
                                "</td>" +
                            "</tr>" +
                        "</tbody>" +
                     "</table>" +
                     "</div>" +
                     "<div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'>" +
                        "<table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'>" +
                            "<tbody>" +
                                "<tr>" +
                                    "<td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:32px;padding-top:16px;text-align:center'>" +
                                        "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0;line-height:0;text-align:left;display:inline-block;width:100%;direction:ltr;vertical-align:middle'>" +
                                            "<div class='m_-4715494176736370387mj-column-per-50' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:middle;width:50%'>" +
                                                "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:middle' width='100%'>" +
                                                    "<tbody><tr><td style='font-size:0px;padding:0px;padding-top:0px;padding-bottom:0px;word-break:break-word'>" +
                                                        "<div style='font-family:Arial,sans-serif;font-size:13px;line-height:24px;color:#000000'>" +
                                                            "<div style='font-family:Montserrat,Helvetica,Arial,sans-serif;font-weight:bold;padding-left:38px;line-height:1.6'>" +
                                                                "<a href='https://localhost:44304/Login/index.aspx' style='color:#9b26b6;text-decoration:none;padding-right:12px;text-decoration:none' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx'>FAQs</a>" +
                                                                " <a href='https://localhost:44304/Login/index.aspx' style='color:#9b26b6;text-decoration:none;padding-right:12px;text-decoration:none' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx' style='text-decoration:none;text-decoration:none' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx'>" +
                                                                    "<img src='https://ci5.googleusercontent.com/proxy/cREboP6MOS7LWvJvNDfo9myOZudl1AVovi2dEUxCDjOTywumWTr3Vh_h6VXlISm7JMBzxwt9KRB9p1LDAr7dTggfAw=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltpv.jpeg' class='CToWUd'> </a>" +
                                                                    "<a href='https://localhost:44304/Login/index.aspx' style='text-decoration:none;padding-left:16px;text-decoration:none' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx'>" +
                                                                    "<img src='https://ci6.googleusercontent.com/proxy/i5gNC4HTjelJIq5GQXU5-2aAVfB9IWeHyO0y-xAZ7dDCPH9gFFNlMJ-KJz3nRl8CLS_bk16b1M7DwlYzUR_wEId86w=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltpg.jpeg' class='CToWUd'> </a>" +
                                                                    "<a href='https://localhost:44304/Login/index.aspx' style='text-decoration:none;padding-left:16px;text-decoration:none' target='_blank' data-saferedirecturl='https://localhost:44304/Login/index.aspx'>" +
                                                                    "<img src='https://ci4.googleusercontent.com/proxy/vMrOCvjGn4IFiq2_9rdaBEqVkYM0xgHY4dEcUtTIGOsMPkDHtiBvnQ_TxGSJKsoi2DIa-V5JQ7L5DkCxWapuLG9OKg=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltp6.jpeg' class='CToWUd'>" +
                                                                    "</a>" +
                                                              "</div>" +
                                                         "</div>" +
                                                        "</td></tr>" +
                                                     "</tbody>" +
                                                "</table>" +
                                            "</div>" +
                                        "</div>" +
                                    "</td>" +
                               "</tr>" +
                           "</tbody>" +
                       "</table>" +
                   "</div>" +
                   "<div style='background:transparent;background-color:transparent;margin:0px auto;max-width:600px'>" +
                   "<table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:transparent;background-color:transparent;width:100%'>" +
                       "<tbody>" +
                            "<tr>" +
                                "<td style='border:0px solid #ffffff;direction:ltr;font-size:0px;padding:16px 0px 24px 0px;padding-bottom:24px;padding-left:0px;padding-right:0px;padding-top:16px;text-align:center'>" +
                                    "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'>" +
                                        "<table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'>" +
                                            "<tbody>" +
                                                "<tr>" +
                                                    "<td align='left' style='font-size:0px;padding:0px 40px 0px 40px;padding-top:0px;padding-right:40px;padding-bottom:0px;padding-left:40px;word-break:break-word'>" +
                                                        "<div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;letter-spacing:normal;line-height:1;text-align:left;color:#000000'>" +
                                                            "<p style='margin:10px 0;margin-top:10px'>" +
                                                                "<span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> Enviado com ♥ pelo Dott.</span></p>" +
                                                                    "<p style='margin:10px 0;margin-bottom:10px'><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> Para garantir que emails são recebidos, por favor adicione</span>" +
                                                                    "<a href='mailto:antsal17@gmail.com' style='text-decoration:none' target='_blank'>" +
                                                                    "<span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'>" +
                                                                    "<u> *@dott.pt </u></span></a><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> à sua lista de contactos. ©2020 Dott.Todos os direitos reservados.</span></p>" +
                                                         "</div>" +
                                                     "</td>" +
                                                "</tr>" +
                                            "</tbody>" +
                                        "</table>" +
                                    "</div>" +
                                "</td>" +
                            "</tr>" +
                        "</tbody>" +
                    "</table>" +
                "</div>" +
            "</div>" +
            "<br/><img src='https://ci5.googleusercontent.com/proxy/WHZMyCsHHpDJ9PVfcoIU_8saFdSWu9NJG3tomix8fhPy6BnTr4yerARi2MmGeBZ31qTI2-dVYo_H-bVOqFJjXk07VYf-z4iFaSKP-CT751HYUoTENIZEOOOWfroPik8U69AL8CHQW6Y71ej701e7f1iG8yRQHd2EiUZa5a-MIAyD9p23LVQL=s0-d-e1-ft#http://ykwj.mjt.lu/oo/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/5e2315a1/e.gif' height='1' width='1' alt='' border='0' style='height:1px;width:1px;border:0' class='CToWUd'><div class='yj6qo'></div><div class='adL'>" +
          "</div>" +
       "</div>" +
        "</div>" +
        "</div>" +
        "<div id=':nx' class='ii gt' style='display:none'>" +
            "<div id=':nw' class='a3s aXjCH undefined'>" +
            "</div>" +
         "</div><div class='hi'>" +
      "</div>" +
   "</div>" +
 "</body>" +
 "</html>";

            return mensagem;
        }

        public static void enviaEmailRecuperaPW(string email, string id, string nome)
        {
            string userName = System.Configuration.ConfigurationManager.AppSettings.Get("Username");
            string passWord = System.Configuration.ConfigurationManager.AppSettings.Get("Password");
            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();

            m.From = new MailAddress(userName);
            m.To.Add(new MailAddress(email));
            m.Subject = "Registo Loja Online SHOOPPERS";
            m.IsBodyHtml = true;
            m.Body = menssagemRecuperacaoPW(id, nome);


            sc.Host = System.Configuration.ConfigurationManager.AppSettings.Get("Host"); ;
            sc.Port = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings.Get("Port"));
            sc.Credentials = new System.Net.NetworkCredential(userName, passWord);
            System.Net.Mail.Attachment attachment;

            sc.EnableSsl = true;
            sc.Send(m);

        }

        private static string menssagemRecuperacaoPW(string id, string nome)
        {

            string mensagem =
                "<html>" +
                "<head></head>" +
       "<div class=''><div class='aHl'></div><div id=':o1' tabindex='-1'></div><div id=':oc' class='ii gt'><div id=':od' class='a3s aXjCH msg-4715494176736370387'><u></u><div style='background-color:#f4f4f4'><div style='background-color:#f4f4f4'><div style='background:#8f23b3;background-color:#8f23b3;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#8f23b3;background-color:#8f23b3; width:'100%'><tbody><tr><td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:8px;padding-top:8px;text-align:center'>" +
       "<div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'><tbody><tr><td align='left' style='font-size:0px;padding:10px 25px;padding-right:40px;padding-left:40px;word-break:break-word'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-collapse:collapse;border-spacing:0px'><tbody><tr><td style='width:80px'>" +
       "<a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/1/WF6QTdqI-gEHIFluVjXLBw/aHR0cHM6Ly93d3cuZG90dC5wdC8' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/1/WF6QTdqI-gEHIFluVjXLBw/aHR0cHM6Ly93d3cuZG90dC5wdC8&amp;source=gmail&amp;ust=1598563129444000&amp;usg=AFQjCNGqImdaj4hK5w40XZNbrD15t6CT-Q'><img alt='Dott Logo' height='auto' src='https://ci5.googleusercontent.com/proxy/JaqFo2FfwiRHadz-tYSgY8twecv_urYTchjz_Ee0Cpv-Xs5nMZRGlRU88Zu-FoAO4tTrb6OceS_nzyN2xlxgPn4=s0-d-e1-ft#http://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/luhn.png' style='border:none;border-radius:px;display:block;outline:none;text-decoration:none;height:auto;width:100%;font-size:13px' width='80' class='CToWUd'></a></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></div><div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'><tbody><tr><td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;padding-top:0px;text-align:center'><div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'><tbody><tr><td align='left' style='font-size:0px;padding:10px 25px;padding-top:48px;padding-right:40px;padding-bottom:24px;padding-left:40px;word-break:break-word'><div style='font-family:Arial,sans-serif;font-size:13px;line-height:24px;text-align:left;color:#5e6977'><p style='line-height:36px;margin:10px 0;margin-top:10px'><span style='font-size:48px'><img goomoji='1f389' data-goomoji='1f389' style='margin:0 0.2ex;vertical-align:middle;max-height:24px' alt='🎉' src='https://mail.google.com/mail/e/1f389' data-image-whitelisted='' class='CToWUd'></span></p><p style='line-height:36px;margin:10px 0'> &nbsp;</p><p style='line-height:36px;margin:10px 0'><span style='color:#000000'><span style='font-size:30px'><b/><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>Muito obrigado por se registar no Dott!</span></b></span></span></p><p style='line-height:36px;margin:10px 0'><span style='color:#000000'><span style='font-size:30px'><b/><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'>Foi o primeiro ponto para uma bela amizade.</span></b></span></span></p><p style='line-height:36px;margin:10px 0'><span style='color:#8f23b3'><span style='font-size:30px'><b/><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'> Falta o segundo: Recuperar a Sua Palavra Passe!</span></b></span></span></p><p style='line-height:36px;margin:10px 0'><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'><span style='font-size:12px'> Olá " + nome + ",</span></span></p><p style='line-height:32px;margin:10px 0'><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'><span style='font-size:12px'> Obrigado por se registar no Dott.Por favor valide o email e comece já a explorar tudo o que temos para oferecer. Este é apenas o início de uma bela amizade.</span></span></p><p style='margin:10px 0'><span style='font-family:Montserrat,Helvetica,Arial,sans-serif'><span style='font-size:12px'> Vamos a isso? No Dott há um mundo de marcas para descobrir e uma experiência de compra sem igual.</span></span></p><p style='margin:10px 0;margin-bottom:10px'> &nbsp;</p></div></td></tr></tbody></table></div></td></tr></tbody></table></div><div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'><tbody><tr><td style='direction:ltr;font-size:0px;padding:20px 0;text-align:center'><div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'><tbody><tr><td align='center' style='background:#ffffff;font-size:0px;padding:10px 25px;padding-top:0px;padding-right:48px;padding-bottom:0px;padding-left:48px;word-break:break-word'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='border-collapse:separate;line-height:100%'><tbody><tr><td align='center' bgcolor='#9b26b6' role='presentation' style='border:none;border-radius:35px;background:#9b26b6' valign='middle'><a href='https://localhost:44304/Login/NewPassRecovery.aspx?id=" + id + "' style='display:inline-block;background:#9b26b6;color:#5e6977;font-family:Montserrat,Helvetica,Arial,sans-serif;font-size:13px;font-weight:normal;line-height:120%;margin:0;text-decoration:none;text-transform:none;padding:16px 25px 16px 25px;border-radius:35px' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/2/42BrR94v6ChPpwfmA9tAOw/aHR0cHM6Ly9kb3R0LnB0L2FjY291bnRzL2J1eWVycy9hY3RpdmF0aW9ucy9mMDdmNDg3YS0yM2ZkLTRmNzQtOGMxNi05Mjk5NDllMzZiY2U_c291cmNlPXNpZ251cA&amp;source=gmail&amp;ust=1598563129444000&amp;usg=AFQjCNFynVZO4JLwr1xW4gQubzm-m05eDw'><span style='color:#ffffff'><b/> RECUPERAR</b></span></a></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></div><div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'><tbody><tr><td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:0px;padding-top:32px;text-align:center'><div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'><tbody><tr><td style='font-size:0px;padding:10px 25px;padding-right:40px;padding-left:40px;word-break:break-word'><p style='border-top:solid 1px #e3eaee;font-size:1;margin:0px auto;width:100%'></p></td></tr></tbody></table></div></td></tr></tbody></table></div><div style='background:#ffffff;background-color:#ffffff;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:#ffffff;background-color:#ffffff;width:100%'><tbody><tr><td style='direction:ltr;font-size:0px;padding:20px 0;padding-bottom:32px;padding-top:16px;text-align:center'><div class='m_-4715494176736370387mj-column-per-100' style='font-size:0;line-height:0;text-align:left;display:inline-block;width:100%;direction:ltr;vertical-align:middle'><div class='m_-4715494176736370387mj-column-per-50' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:middle;width:50%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:middle' width='100%'><tbody><tr><td style='font-size:0px;padding:0px;padding-top:0px;padding-bottom:0px;word-break:break-word'><div style='font-family:Arial,sans-serif;font-size:13px;line-height:24px;color:#000000'><div style='font-family:Montserrat,Helvetica,Arial,sans-serif;font-weight:bold;padding-left:38px;line-height:1.6'><a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/3/BNpAQyxvtZ7GYiuoyvsVKg/aHR0cHM6Ly9zdXBvcnRlLmRvdHQucHQvaGMvcHQ' style='color:#9b26b6;text-decoration:none;padding-right:12px;text-decoration:none' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/3/BNpAQyxvtZ7GYiuoyvsVKg/aHR0cHM6Ly9zdXBvcnRlLmRvdHQucHQvaGMvcHQ&amp;source=gmail&amp;ust=1598563129444000&amp;usg=AFQjCNG47wObaBfxktU1CdnCwLCZHLj2UA'>FAQs</a> <a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/4/2ojmCrRjm236Qe0Y-E-3SQ/aHR0cHM6Ly9zdXBvcnRlLmRvdHQucHQvaGMvcHQvYXJ0aWNsZXMvMzYwMDIyMjY4OTUxLUNvbW8tcG9zc28tY29udGFjdGFyLW8tRG90dC0' style='color:#9b26b6;text-decoration:none;padding-right:12px;text-decoration:none' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/4/2ojmCrRjm236Qe0Y-E-3SQ/aHR0cHM6Ly9zdXBvcnRlLmRvdHQucHQvaGMvcHQvYXJ0aWNsZXMvMzYwMDIyMjY4OTUxLUNvbW8tcG9zc28tY29udGFjdGFyLW8tRG90dC0&amp;source=gmail&amp;ust=1598563129445000&amp;usg=AFQjCNGrLRQSrxS2pk1vlitz-nCdpRrscA'>Contactos</a></div></div></td></tr></tbody></table></div><div class='m_-4715494176736370387mj-column-per-50' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:middle;width:50%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:middle' width='100%'><tbody><tr><td style='font-size:0px;padding:0px;padding-top:0px;padding-bottom:0px;word-break:break-word'><div style='font-family:Arial,sans-serif;font-size:13px;line-height:24px;color:#000000'><div style='font-family:Montserrat,Helvetica,Arial,sans-serif;font-weight:bold;padding-right:40px;text-align:right'><a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/5/pJbU-WH0_kNwFPEwjurSnA/aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL2RvdHQucHQ' style='text-decoration:none;text-decoration:none' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/5/pJbU-WH0_kNwFPEwjurSnA/aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL2RvdHQucHQ&amp;source=gmail&amp;ust=1598563129445000&amp;usg=AFQjCNHgFL7OAVF796Ajc3yoV7UT2iCzOA'><img src='https://ci5.googleusercontent.com/proxy/cREboP6MOS7LWvJvNDfo9myOZudl1AVovi2dEUxCDjOTywumWTr3Vh_h6VXlISm7JMBzxwt9KRB9p1LDAr7dTggfAw=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltpv.jpeg' class='CToWUd'> </a><a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/6/-yXR1bzoo1VM9o6XLn12-w/aHR0cHM6Ly93d3cuaW5zdGFncmFtLmNvbS9kb3R0LnB0' style='text-decoration:none;padding-left:16px;text-decoration:none' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/6/-yXR1bzoo1VM9o6XLn12-w/aHR0cHM6Ly93d3cuaW5zdGFncmFtLmNvbS9kb3R0LnB0&amp;source=gmail&amp;ust=1598563129445000&amp;usg=AFQjCNGXY6G1aAgrVe1095z9Og8bikkatQ'><img src='https://ci6.googleusercontent.com/proxy/i5gNC4HTjelJIq5GQXU5-2aAVfB9IWeHyO0y-xAZ7dDCPH9gFFNlMJ-KJz3nRl8CLS_bk16b1M7DwlYzUR_wEId86w=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltpg.jpeg' class='CToWUd'> </a><a href='http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/7/BswGKmlwWGoK9zlMWtusow/aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2NvbXBhbnkvZG90dHB0' style='text-decoration:none;padding-left:16px;text-decoration:none' target='_blank' data-saferedirecturl='https://www.google.com/url?q=http://ykwj.mjt.lu/lnk/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/7/BswGKmlwWGoK9zlMWtusow/aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2NvbXBhbnkvZG90dHB0&amp;source=gmail&amp;ust=1598563129445000&amp;usg=AFQjCNFlbaRg6efC-Ag-ihG9k7exuuuJ2g'><img src='https://ci4.googleusercontent.com/proxy/vMrOCvjGn4IFiq2_9rdaBEqVkYM0xgHY4dEcUtTIGOsMPkDHtiBvnQ_TxGSJKsoi2DIa-V5JQ7L5DkCxWapuLG9OKg=s0-d-e1-ft#https://ykwj.mjt.lu/tplimg/ykwj/b/ilmw/ltp6.jpeg' class='CToWUd'></a></div></div></td></tr></tbody></table></div></div></td></tr></tbody></table></div><div style='background:transparent;background-color:transparent;margin:0px auto;max-width:600px'><table align='center' border='0' cellpadding='0' cellspacing='0' role='presentation' style='background:transparent;background-color:transparent;width:100%'><tbody><tr><td style='border:0px solid #ffffff;direction:ltr;font-size:0px;padding:16px 0px 24px 0px;padding-bottom:24px;padding-left:0px;padding-right:0px;padding-top:16px;text-align:center'><div class='m_-4715494176736370387mj-column-per-100' style='font-size:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;width:100%'><table border='0' cellpadding='0' cellspacing='0' role='presentation' style='vertical-align:top' width='100%'><tbody><tr><td align='left' style='font-size:0px;padding:0px 40px 0px 40px;padding-top:0px;padding-right:40px;padding-bottom:0px;padding-left:40px;word-break:break-word'><div style='font-family:Ubuntu,Helvetica,Arial,sans-serif;font-size:13px;letter-spacing:normal;line-height:1;text-align:left;color:#000000'><p style='margin:10px 0;margin-top:10px'><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> Enviado com ♥ pelo Dott.</span></p><p style='margin:10px 0;margin-bottom:10px'><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> Para garantir que emails são recebidos, por favor adicione</span><a href='mailto:suporte@dott.pt' style='text-decoration:none' target='_blank'><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'><u> *@dott.pt </ u></ span></ a><span style='color:#472f4c;font-size:11px;line-height:24px;font-family:Montserrat,Helvetica,Arial,sans-serif'> à sua lista de contactos. ©2020 Dott.Todos os direitos reservados.</span></p></div></td></tr></tbody></table></div></td></tr></tbody></table></div></div>" +
       "<br/><img src='https://ci5.googleusercontent.com/proxy/WHZMyCsHHpDJ9PVfcoIU_8saFdSWu9NJG3tomix8fhPy6BnTr4yerARi2MmGeBZ31qTI2-dVYo_H-bVOqFJjXk07VYf-z4iFaSKP-CT751HYUoTENIZEOOOWfroPik8U69AL8CHQW6Y71ej701e7f1iG8yRQHd2EiUZa5a-MIAyD9p23LVQL=s0-d-e1-ft#http://ykwj.mjt.lu/oo/EAAAAQEEiNUAAAAAAAAAAKF2pygAAABEx7IAAAAAAAvWjQBfRtGg-TWcrpuJSYGbPH2FLmCUfgAL6oY/5e2315a1/e.gif' height='1' width='1' alt='' border='0' style='height:1px;width:1px;border:0' class='CToWUd'><div class='yj6qo'></div><div class='adL'>" +
       "</div></div></div></div><div id=':nx' class='ii gt' style='display:none'><div id=':nw' class='a3s aXjCH undefined'></div></div><div class='hi'></div></div>" +
       "</body>" +
       "</html>";

            return mensagem;
        }

    }
}