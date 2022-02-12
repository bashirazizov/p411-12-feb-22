using System;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Teacher teacher = new Teacher();

            //foreach (Group group in teacher.groups)
            //{
            //    foreach (Student stu in group.students)
            //    {
            //        Console.WriteLine(stu.name);
            //    }


            //Student stu = new Student();
            //stu.group.teacher.fullname;


            Group group = new Group();
            foreach (Course course in group.courses)
            {
                Console.WriteLine(course.teacher.fullname);
            }


            Teacher t = new Teacher();
            foreach (Course course in t.courses)
            {
                Console.WriteLine(course.group.name);
            }

            foreach (Course course in t.courses)
            {
                foreach (Student stu in course.group.students)
                {
                    Console.WriteLine(stu.fullname);
                }
            }

            Student s = new Student();

            foreach (Course course in s.group.courses)
            {
                Console.WriteLine(course.teacher.fullname);

            }
        }
    }
}
