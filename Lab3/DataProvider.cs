using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3
{
    public static class DataProvider
    {
        public class Developer
        {
            public string Name { get; set; }
            public List<int> ProjectIds { get; set; }
        }

        public class Project
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public DateTime DateFinish { get; set; }
            public int Rate { get; set; }
        }

        public static Dictionary<int, Project> Projects { get; private set; }
        public static Dictionary<string, Developer> Developers { get; private set; }
        public static Dictionary<Developer, List<Project>> DevelopersProjects {get; private set;}

        const string DataDir = @"C:\Users\38099\source\repos\Lab3\";
        public static void ReadData()
        {
            Projects = new Dictionary<int, Project>();
            Developers = new Dictionary<string, Developer>();
            DevelopersProjects = new Dictionary<Developer, List<Project>>();
            using (StreamReader reader = new StreamReader(DataDir + "developers.txt"))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    var splitLine = line.Split(new[] { ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                    string name = splitLine[0];
                    if (splitLine.Length > 1)
                    {
                        var arrayProjectCode = splitLine[1].Split(',');
                        var listCodes = new List<int>();
                        foreach (string code in arrayProjectCode)
                        {
                            int tempCode;
                            if (int.TryParse(code, out tempCode))
                            {
                                listCodes.Add(tempCode);
                            }
                        }
                        Developers.Add(name, new Developer { Name = name, ProjectIds = listCodes });
                    }
                    else
                    {
                        Developers.Add(name, new Developer { Name = name, ProjectIds = new List<int>() });
                    }
                }
            }

            using (StreamReader reader = new StreamReader(DataDir + "projects.txt"))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    var splitLine = line.Split(new[] { ' ', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                    int code = Convert.ToInt32(splitLine[0]);
                    string name = splitLine[1];
                    DateTime dateFinish = Convert.ToDateTime(splitLine[2]);
                    int rate = Convert.ToInt32(splitLine[3]);
                    Projects.Add(code, new Project { Id = code, Name = name, DateFinish = dateFinish.Date, Rate = rate });
                }
            }

            foreach (var developer in Developers)
            {
                if (developer.Value.ProjectIds.Count != 0)
                {
                    foreach (var id in developer.Value.ProjectIds)
                    {
                        if (!DevelopersProjects.ContainsKey(developer.Value))
                        {
                            DevelopersProjects.Add(developer.Value, new List<Project>());
                        }
                        DevelopersProjects[developer.Value].Add(Projects[id]);
                    }
                }
                else
                {
                    DevelopersProjects.Add(developer.Value, new List<Project>());
                }
            }
        }

        public static string ListToString(List<Project> projects)
        {
            string result = String.Empty;
            foreach (var project in projects)
            {
                result += result.Length == 0 ? project.Name : ", " + project.Name;
            }
            return result;
        }

        public static string ListToString(List<Developer> developers)
        {
            string result = String.Empty;
            foreach (var project in developers)
            {
                result += result.Length == 0 ? project.Name : ", " + project.Name;
            }
            return result;
        }
    }
}