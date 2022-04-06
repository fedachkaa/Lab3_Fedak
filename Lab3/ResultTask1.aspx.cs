using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lab3.DataProvider;
namespace Lab3
{
    public partial class ResultTask1 : System.Web.UI.Page
    {
        /// <summary>
        /// Функція для завантаження сторінки для першого завдання. 
        /// Відбувається перевірка чи був перехід з попередньої сторінки, та на наявність даних з сесій.
        /// Якщо перехід був не з попередньої сторінки, але сесія "користувач", то відбувається перенаправлення на основну сторінку.
        /// Інакше на сторінку авторизації.
        /// 
        /// Якщо є передані діапазони дат, то відбувається перебір всіх проектів та їх дат закінчення, 
        /// якщо дата закінчення потрапляє під умови, то проект додається в результат, 
        /// та відбувається завантаження в таблицю.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage!=null && Session["dateFrom"]!=null && Session["dateTo"]!=null)
            {
                var result = new Dictionary<Project, List<Developer>>();
                var dateFrom = Convert.ToDateTime(Session["dateFrom"]);
                var dateTo = Convert.ToDateTime(Session["dateTo"]);
                foreach(var project in Projects)
                {
                    if(project.Value.DateFinish <= dateTo && project.Value.DateFinish >= dateFrom)
                    {
                        if(!result.ContainsKey(project.Value))
                        {
                            result.Add(project.Value, new List<Developer>());
                        }
                        foreach(var developer in Developers)
                        {
                            if (developer.Value.ProjectIds.Contains(project.Value.Id))
                            {
                                result[project.Value].Add(developer.Value);
                            }
                        }
                    }
                }

                if (result.Count > 0)
                {
                    Result1Title.Text = $"Проекти завершені в період з {dateFrom.ToShortDateString()} по {dateTo.ToShortDateString()} та список їх розробників:";
                    Result1Grid.DataSource = result.Select(v => new
                    {
                        Проект = v.Key.Name,
                        Розробники = ListToString(v.Value),
                    }) ;
                    Result1Grid.DataBind();
                }
            }
            else if(PreviousPage == null)
            {
                if (Session["user"] != null)
                {
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }            
        }
    }
}