using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        
        private void button_Click(object sender, RoutedEventArgs e)
        {
            

           // if (radioButton1.IsChecked == true)
           // {
           //     textBlock3.Text = "Hello.";
           // }
           // else
           // {
           //     radioButton2.IsChecked = true;
           //     textBlock3.Text = "Goodbye.";
           // }
            Window1 objWelcome = new Window1();
            objWelcome.textBlock1.Text = textBox1.Text;
            objWelcome.textBlock2.Text = textBox2.Text;
            int x, y, sum;
            //int key;
            x = int.Parse(objWelcome.textBlock1.Text);
            y = int.Parse(objWelcome.textBlock2.Text);
            sum = x + y;
            //sum = double.Parse(textBox4.Text);
            objWelcome.label1.Content = x + y;
            objWelcome.label2.Content = x - y;
            objWelcome.Show(); //Sending value from one form to another form.
            Close();
        }
    }
}
