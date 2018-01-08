using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace KurCekme
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        void kurcek()
        {
            // Bugün (en son iş gününe) e ait döviz kurları için
            string today = "http://www.tcmb.gov.tr/kurlar/today.xml";

            // 14 Şubat 2013 e ait döviz kurları için
            string anyDays = "http://www.tcmb.gov.tr/kurlar/201302/14022013.xml";

            var xmlDoc = new XmlDocument();
            xmlDoc.Load(today);

            string USD = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='USD']/BanknoteSelling").InnerXml;
            string EURO = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='EUR']/BanknoteSelling").InnerXml;
            string YEN = xmlDoc.SelectSingleNode("Tarih_Date/Currency[@Kod='JPY']/BanknoteSelling").InnerXml;

            dolar.Text = USD.ToString();
            euro.Text = EURO.ToString();
            yen.Text = YEN.ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            kurcek();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            kurcek();
        }
    }
}