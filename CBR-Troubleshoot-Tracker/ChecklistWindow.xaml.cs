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

namespace CBR_Troubleshoot_Tracker
{
    /// <summary>
    /// Interaction logic for ChecklistWindow.xaml
    /// </summary>
    public partial class ChecklistWindow : Window
    {
        readonly VM vm;
        readonly StudentQuestion sq = new StudentQuestion("");
        public ChecklistWindow(bool isEdit)
        {
            InitializeComponent(); 
            vm = VM.Instance;
            if (isEdit)
            {
                sq.id = vm.SelectedEntry.id;
                sq.QuestionDate = vm.SelectedEntry.QuestionDate;
                sq.Question = vm.SelectedEntry.Question;
                sq.ResolutionNum = vm.SelectedEntry.ResolutionNum;
                sq.Residency = vm.SelectedEntry.Residency;
                sq.IsInfoRead = vm.SelectedEntry.IsInfoRead;
                sq.IsFilterUnchecked = vm.SelectedEntry.IsFilterUnchecked;
                sq.AreStepsCompleted = vm.SelectedEntry.AreStepsCompleted;
                sq.IsPRChecked = vm.SelectedEntry.IsPRChecked;
                sq.IsSSAConsulted = vm.SelectedEntry.IsSSAConsulted;
                sq.IsScreenShared = vm.SelectedEntry.IsScreenShared;
                sq.isNew = false;
            }
            else
                Title = "Add New Entry";
            DataContext = sq;
        }
        private void Save_Click(object sender, RoutedEventArgs e)
        {
            vm.Save(sq);
            Close();
        }

        private void Reset_Click(object sender, RoutedEventArgs e)
        {
            sq.IsInfoRead = false;
            sq.IsFilterUnchecked = false;
            sq.AreStepsCompleted = false;
            sq.IsPRChecked = false;
            sq.IsSSAConsulted = false;
            sq.IsScreenShared = false;
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            vm.Delete(sq);
            Close();
        }
    }
}
