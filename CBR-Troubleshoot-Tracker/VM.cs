using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace CBR_Troubleshoot_Tracker
{
    public enum ResolutionTypes
    {
        Resolved = 0,
        IT = 1,
        Other = 2,
        Unresolved
    }

    class VM :INotifyPropertyChanged
    {
        #region singleton
        private static VM vm;
        public static VM Instance { get { vm ??= new VM(); return vm; } }
        #endregion

        static MongoClient client = new MongoClient();
        static IMongoDatabase db = client.GetDatabase("CBR");
        private readonly IMongoCollection<StudentQuestion> collection = db.GetCollection<StudentQuestion>("studentquestions");

        public BindingList<StudentQuestion> StudentQuestions { get; set; } = new BindingList<StudentQuestion>();

        private List<StudentQuestion> studentQuestions;

        private StudentQuestion selectedEntry;
        public StudentQuestion SelectedEntry
        {
            get { return selectedEntry; }
            set { selectedEntry = value; NotifyChange(); }
        }

        private bool isDescending;
        public bool IsDescending
        {
            get { return isDescending; }
            set { isDescending = value; NotifyChange(); }
        }

        private VM()
        {
            ReadAllDocuments();
        }

        private void ReadAllDocuments()
        {
            studentQuestions = new List<StudentQuestion>();
            studentQuestions = collection.AsQueryable().ToList();
            foreach (StudentQuestion q in studentQuestions)
                StudentQuestions.Add(q);
        }

        public void Sort()
        {
            if (isDescending)
            {
                studentQuestions = studentQuestions.OrderByDescending(s => s.QuestionDate).ToList();
            }
            else
            {
                studentQuestions = studentQuestions.OrderBy(s => s.QuestionDate).ToList();
            }
            StudentQuestions.Clear();
            foreach (StudentQuestion q in studentQuestions)
                StudentQuestions.Add(q);
        }

        public void Save(StudentQuestion sq)
        {
            StudentQuestions.Clear();
            if (sq.isNew)
            {
                collection.InsertOne(sq);
                ReadAllDocuments();
            }
            else
            {
                var filter = Builders<StudentQuestion>.Filter.Eq(s => s.id, sq.id);
                var update = Builders<StudentQuestion>.Update.Set(s => s.Question, sq.Question);
                collection.UpdateOne(filter,update);
                ReadAllDocuments();
                SelectedEntry = null;
            }
           
        }

        public void Delete(StudentQuestion sq)
        {
            StudentQuestions.Clear();
            var deleteFilter = Builders<StudentQuestion>.Filter.Eq(s => s.id, sq.id);
            collection.DeleteOne(deleteFilter);
            ReadAllDocuments();
        }

        #region PropertyChangedImplementation
        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyChange([CallerMemberName] string property = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }
        #endregion
    }
}
