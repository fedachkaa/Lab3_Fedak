using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lab3.DataProvider;

namespace Lab3
{
    public partial class MainPage : System.Web.UI.Page
    {

        /// <summary>
        /// Метод для завантаження головної сторінки. Відбувається перевірка чи сесія є користувачем, 
        /// якщо так то відбувається перенаправлення на основну сторінку, інакше - на сторінку авторизації.
        /// У 27 рядку відубається первірка, щоб завантажувати дані лише один раз.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if(!IsPostBack)
            {
                ReadData();
                DevelopersGrid.DataSource = DevelopersProjects.Select(v => new
                {
                    Розробник = v.Key.Name,
                    Проекти = ListToString(v.Value),
                }) ;
                DevelopersGrid.DataBind();

                var projects = Projects.Select(v => new
                {
                    Проект = v.Value.Name,
                    Завершення = v.Value.DateFinish.ToShortDateString(),
                    Оцінка = v.Value.Rate,
                });
                ProjectsGrid.DataSource = projects.OrderBy(v=> 1 - v.Оцінка);
                ProjectsGrid.DataBind();
                DateFrom.TodaysDate = Projects.Min(v => v.Value.DateFinish); 
            }
        }

        /// <summary>
        /// Функція, яка виконується при натисканні кнопки "Завдання 1", 
        /// відбувається перенаправлення на сторінку для першого завдання, 
        /// та передача даних про діапазон років за допомогою сесій.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Task1Btn_Click(object sender, EventArgs e)
        {
            Session["dateFrom"] = DateFrom.SelectedDate ;
            Session["dateTo"] = DateTo.SelectedDate;
            Server.Transfer("ResultTask1.aspx");
        }

        /// <summary>
        /// Функція, яка виконується при натисканні кнопки "Завдання 2", 
        /// відбувається перенаправлення на сторінку для другого завдання.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Task2Btn_Click(object sender, EventArgs e)
        {
            Server.Transfer("ResultTask2.aspx");
        }
    }
}