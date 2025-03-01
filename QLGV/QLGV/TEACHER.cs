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
    
    public partial class TEACHER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TEACHER()
        {
            this.APPLIED_TECH_PRODUCT = new HashSet<APPLIED_TECH_PRODUCT>();
            this.BOOK_HISTORY = new HashSet<BOOK_HISTORY>();
            this.COUNCIL_HISTORY = new HashSet<COUNCIL_HISTORY>();
            this.DT_ACADEMIC_RANK = new HashSet<DT_ACADEMIC_RANK>();
            this.DT_ADMINISTRATIVE_POST = new HashSet<DT_ADMINISTRATIVE_POST>();
            this.DT_AWARD = new HashSet<DT_AWARD>();
            this.DT_BOOK = new HashSet<DT_BOOK>();
            this.DT_Council = new HashSet<DT_Council>();
            this.DT_DEGREE = new HashSet<DT_DEGREE>();
            this.DT_DEPARTMENT = new HashSet<DT_DEPARTMENT>();
            this.DT_EXAMIN = new HashSet<DT_EXAMIN>();
            this.DT_MENTORING = new HashSet<DT_MENTORING>();
            this.DT_PARTY_POST = new HashSet<DT_PARTY_POST>();
            this.DT_PUNISHMENT = new HashSet<DT_PUNISHMENT>();
            this.DT_RESEARCH = new HashSet<DT_RESEARCH>();
            this.DT_RESEARCH_TITLE = new HashSet<DT_RESEARCH_TITLE>();
            this.DT_TEACHING = new HashSet<DT_TEACHING>();
            this.EDUCATION_PROCESS = new HashSet<EDUCATION_PROCESS>();
            this.EXAMIN_HISTORY_ = new HashSet<EXAMIN_HISTORY_>();
            this.LOAD_BY_SEMESTER = new HashSet<LOAD_BY_SEMESTER>();
            this.LOAD_STATISTIC = new HashSet<LOAD_STATISTIC>();
            this.MENTORING_HISTORY = new HashSet<MENTORING_HISTORY>();
            this.OTHER_BUSINESS = new HashSet<OTHER_BUSINESS>();
            this.RESEARCH_HISTORY = new HashSet<RESEARCH_HISTORY>();
            this.TEACHER_HISTORY = new HashSet<TEACHER_HISTORY>();
            this.TEACHING_HISTORY = new HashSet<TEACHING_HISTORY>();
            this.TECH_AWARD = new HashSet<TECH_AWARD>();
        }
    
        public string code { get; set; }
        public string codeview { get; set; }
        public string name { get; set; }
        public string note { get; set; }
        public string lastedituser { get; set; }
        public Nullable<System.DateTime> lastedittime { get; set; }
        public Nullable<short> @lock { get; set; }
        public Nullable<System.DateTime> lockdate { get; set; }
        public Nullable<int> theorder { get; set; }
        public string gender { get; set; }
        public string Address { get; set; }
        public string hometown { get; set; }
        public Nullable<System.DateTime> birthday { get; set; }
        public string Email { get; set; }
        public string phone { get; set; }
        public string Departmentcode { get; set; }
        public Nullable<bool> Haschild36m { get; set; }
        public Nullable<int> finalremissionrate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<APPLIED_TECH_PRODUCT> APPLIED_TECH_PRODUCT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BOOK_HISTORY> BOOK_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<COUNCIL_HISTORY> COUNCIL_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_ACADEMIC_RANK> DT_ACADEMIC_RANK { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_ADMINISTRATIVE_POST> DT_ADMINISTRATIVE_POST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_AWARD> DT_AWARD { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_BOOK> DT_BOOK { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_Council> DT_Council { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_DEGREE> DT_DEGREE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_DEPARTMENT> DT_DEPARTMENT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_EXAMIN> DT_EXAMIN { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_MENTORING> DT_MENTORING { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_PARTY_POST> DT_PARTY_POST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_PUNISHMENT> DT_PUNISHMENT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_RESEARCH> DT_RESEARCH { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_RESEARCH_TITLE> DT_RESEARCH_TITLE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_TEACHING> DT_TEACHING { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EDUCATION_PROCESS> EDUCATION_PROCESS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EXAMIN_HISTORY_> EXAMIN_HISTORY_ { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LOAD_BY_SEMESTER> LOAD_BY_SEMESTER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LOAD_STATISTIC> LOAD_STATISTIC { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MENTORING_HISTORY> MENTORING_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OTHER_BUSINESS> OTHER_BUSINESS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RESEARCH_HISTORY> RESEARCH_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TEACHER_HISTORY> TEACHER_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TEACHING_HISTORY> TEACHING_HISTORY { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TECH_AWARD> TECH_AWARD { get; set; }
    }
}
