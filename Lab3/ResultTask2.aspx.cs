using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lab3.DataProvider;

namespace Lab3
{
    public partial class ResultTask2 : System.Web.UI.Page
    {
        /// <summary>
        /// Словник для зберігання розробників(ключ) та їх рейтингів(значення).
        /// </summary>
        public Dictionary<Developer, int> Result { get; set; }

        /// <summary>
        /// Функція для завантаження сторінки для другого завдання.
        /// Відбувається перевірка чи був перехід з попередньої сторінки, на сесію та чи завантажується сторінка вперше.
        /// Якщо перехід виконаний був не з попередньої сторінки, та сесія не користувач, то відбувається перенаправлення на сторінку авторизації.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((PreviousPage == null || Session["user"] == null) && !Page.IsPostBack)
            {
                Response.Redirect("Login.aspx");
            }
            Result = new Dictionary<Developer, int>();
            foreach (var developer in DevelopersProjects)
            {
                int sum = 0;
                foreach (var projects in developer.Value)
                {
                    sum += projects.Rate;
                }
                sum = developer.Value.Count() == 0 ? 0 : sum / developer.Value.Count();
                Result.Add(developer.Key, sum);
            }
            Result2Grid.DataSource = Result.Select(v => new
            {
                Розробник = v.Key.Name,
                Рейтинг = v.Value,
            });
            Result2Grid.DataBind();
        }
        

        /// <summary>
        /// Функція для сортування списку за спаданням чи зростанням рейтингу.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OrderBtn_Click(object sender, EventArgs e)
        {
            Session["user"] = "user";
            var result = Result.Select(v => new
            {
                Розробник = v.Key.Name,
                Рейтинг = v.Value,
            });
            if (OrderBtn.Text == "За зростанням")
            {
                Result2Grid.DataSource = result.OrderBy(v => v.Рейтинг);
                OrderBtn.Text = "За спаданням";
            }
            else
            {
                Result2Grid.DataSource = result.OrderBy(v => 1 - v.Рейтинг);
                OrderBtn.Text = "За зростанням";
            }
            Result2Grid.DataBind();
        }
    }
}