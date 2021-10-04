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

namespace CBR_Troubleshoot_Tracker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        readonly VM vm;
        public MainWindow()
        {
            InitializeComponent();
            vm = VM.Instance;
            DataContext = vm;
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            ChecklistWindow cw = new ChecklistWindow(false) { Owner = this };
            cw.ShowDialog();
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            if(vm.SelectedEntry != null)
            {
                ChecklistWindow cw = new ChecklistWindow(true) { Owner = this };
                cw.ShowDialog();
            }
            else
            {
                MessageBox.Show("Please select an entry to edit.");
            }

        }

        private void Sorting_Click(object sender, RoutedEventArgs e)
        {
            vm.Sort();
        }
    }
}
