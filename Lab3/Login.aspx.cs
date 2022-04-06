using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Login : System.Web.UI.Page
    {
        /// <summary>
        /// Словник для зберігання логінів та паролів користувачів.
        /// </summary>
        private static Dictionary<string, string> Users = new Dictionary<string, string>()
        {
            {"admin", "admin" },
        };

        /// <summary>
        /// Функція, яка виконується при завантаженні сторінки. Сесія користувача встановлюється null, 
        /// для подальшого запобігання доступу до інших сторінок неавторизованих користувачів.
        /// </summary>
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = null;
        }

        /// <summary>
        /// Функція для авторизації користувачів.
        /// Зчитуються відповідні дані з текстових полів, та відбувається їх пошук у словнику.
        /// Якщо така пара ключ-значення є, то відбувається перенаправлення на основну сторінку.
        /// Інакше виводиться відповідне повідомлення.
        /// </summary>
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            var username = LoginText.Text;
            var password = PasswordText.Text;

            if (Users.Contains(new KeyValuePair<string, string>(username, password)))
            {
                Session["user"] = username;
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Write(@"<script>alert('Неправильний пароль або логін! \nСпробуйте ще раз.')</script>");
            }
        }

        
        /// <summary>
        /// Функція для реєстрації користувачів.
        /// Зчитування даних з відповідних текстових полів, та перевірка на співпадання паролів.
        /// Якщо все успішно, пара логін-пароль додається в словник,в сесію користувача встановлюється значення даного користувача
        /// та перенаправлення на основну сторінку.
        /// </summary>
        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            var username = RegisterLogin.Text;
            var password = RegisterPassword.Text;
            var confirmPassword = ConfirmPassword.Text;
  
            if (password == confirmPassword)
            {
                Users.Add(username, password);
                Session["user"] = username;
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Write(@"<script>alert('Паролі не співпадають! \nСпробуйте ще раз.')</script>");
            }
        }
    }
}