//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLGV
{
    using System;
    using System.Collections.Generic;
    
    public partial class EXAMIN_HISTORY_
    {
        public string code { get; set; }
        public string codeview { get; set; }
        public string name { get; set; }
        public string note { get; set; }
        public string lastedituser { get; set; }
        public Nullable<System.DateTime> lastedittime { get; set; }
        public Nullable<short> @lock { get; set; }
        public Nullable<System.DateTime> lockdate { get; set; }
        public Nullable<int> theorder { get; set; }
        public string teachercode { get; set; }
        public string teachername { get; set; }
        public string examintypename { get; set; }
        public string subjectname { get; set; }
        public string classname { get; set; }
        public Nullable<System.DateTime> amountoftime { get; set; }
        public string subjectclassname { get; set; }
        public Nullable<int> numberofstudent { get; set; }
        public Nullable<System.DateTime> start { get; set; }
        public Nullable<System.DateTime> end { get; set; }
        public string dtcode { get; set; }
    
        public virtual TEACHER TEACHER { get; set; }
    }
}
