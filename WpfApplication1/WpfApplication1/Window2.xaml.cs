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
using System.Windows.Shapes;
using Microsoft.Win32;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Windows.Navigation;
using WpfApplication1;

namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for Window2.xaml
    /// </summary>
    public partial class Window2 : Window
    {
        public Window2()
        {
            InitializeComponent();

            List<ViewerApplication> viewers = new List<ViewerApplication>();
            using (RegistryKey hklm = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, RegistryView.Registry32))
            {
                RegistryKey webClientsRootKey = hklm.OpenSubKey(@"SOFTWARE\Clients\StartMenuInternet");
                if (webClientsRootKey != null)
                    foreach (var subKeyName in webClientsRootKey.GetSubKeyNames())
                        if (webClientsRootKey.OpenSubKey(subKeyName) != null)
                            if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell") != null)
                                if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open") != null)
                                    if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open").OpenSubKey("command") != null)
                                    {
                                        string commandLineUri = (string)webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open").OpenSubKey("command").GetValue(null);
                                        if (string.IsNullOrEmpty(commandLineUri))
                                            continue;
                                        commandLineUri = commandLineUri.Trim("\"".ToCharArray());
                                        ViewerApplication viewer = new ViewerApplication();
                                        viewer.Executable = commandLineUri;
                                        viewer.Name = (string)webClientsRootKey.OpenSubKey(subKeyName).GetValue(null);
                                        viewers.Add(viewer);
                                    }
            }
            this.listView.ItemsSource = viewers;
        }
        private void button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow objMainWindows = new MainWindow();
            objMainWindows.Show(); //Sending value from one form to another form.
            this.Close();
        }

        private class ViewerApplication
        {
            internal string Executable;
            public string Name { get; set; }
           
            public Icon Icon
            {
                get { return System.Drawing.Icon.ExtractAssociatedIcon(Executable); }
            }

        }

        private void listView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}

namespace System.Drawing
{
    class Icon
    {
        internal static Icon ExtractAssociatedIcon(string executable)
        {
            throw new NotImplementedException();
        }

        internal static Icon ExtractAssociatedIcon(ViewerApplication.Executable executable)
        {
            throw new NotImplementedException();
        }

        internal BitmapImage ToBitmap()
        {
            throw new NotImplementedException();
        }
    }
}