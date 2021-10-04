using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CBR_Troubleshoot_Tracker
{
    class StudentQuestion
    {
        public bool isNew = true;
        [BsonId]
        public ObjectId id {get; set;}

        [BsonElement("questionDate")]
        public DateTime QuestionDate { get; set; }

        [BsonElement("question")]
        public string Question { get; set; }

        [BsonElement("resolutionType")]
        public int ResolutionNum { get; set; }

        [BsonElement("residency")]
        public bool Residency { get; set; }

        [BsonElement("infoRead")]
        public bool IsInfoRead { get; set; }

        [BsonElement("filterUnchecked")]
        public bool IsFilterUnchecked { get; set; }

        [BsonElement("stepsCompleted")]
        public bool AreStepsCompleted { get; set; }

        [BsonElement("prChecked")]
        public bool IsPRChecked { get; set; }

        [BsonElement("ssaConsulted")]
        public bool IsSSAConsulted { get; set; }

        [BsonElement("screenShared")]
        public bool IsScreenShared { get; set; }

        public StudentQuestion(string qn)
        {
            QuestionDate = DateTime.Now;
            Question = qn;
            ResolutionNum = 0;
        }
    }
}
