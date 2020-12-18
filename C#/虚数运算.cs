using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cons
{
    public class Complex
    {
        private int real;
        private int imaginary;
        public Complex(int x, int y)
        {
            real = x;
            imaginary = y;
        }
        public static Complex operator +(Complex c1, Complex c2)
        {
            return new Complex(c1.real + c2.real, c1.imaginary + c2.imaginary); 
        }
        public static Complex operator *(Complex c1, Complex c2)
        {
            return new Complex(c1.real * c2.real - c1.imaginary * c2.imaginary,
               c1.real * c2.imaginary + c1.imaginary * c2.real);
       }
        public override string ToString()
        {
            return (string.Format("{0}+{1}i",real,imaginary ));
        } 
    }
    class Program
    {
        static void Main(string[] args)
        {
            Complex c1 = new Complex(5, 6);
            Complex c2 = new Complex(8, 9);
            Console.WriteLine("Complex Number n1={0}", c1.ToString());
            Console.WriteLine("Complex Number n2={0}", c2.ToString());
            Complex sum = c1 + c2;
            Console.WriteLine("Complex Number sum={0}", sum.ToString());
            Complex product = c1 * c2;
            Console.WriteLine("Complex Number product={0}", product.ToString());
            Console.Read();
        }
    }
}
