namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TEACHER")]
    public partial class TEACHER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TEACHER()
        {
            APPLIED_TECH_PRODUCT = new HashSet<APPLIED_TECH_PRODUCT>();
            BOOK_HISTORY = new HashSet<BOOK_HISTORY>();
            COUNCIL_HISTORY = new HashSet<COUNCIL_HISTORY>();
            DT_ACADEMIC_RANK = new HashSet<DT_ACADEMIC_RANK>();
            DT_ADMINISTRATIVE_POST = new HashSet<DT_ADMINISTRATIVE_POST>();
            DT_AWARD = new HashSet<DT_AWARD>();
            DT_BOOK = new HashSet<DT_BOOK>();
            DT_COUNCIL = new HashSet<DT_COUNCIL>();
            DT_DEGREE = new HashSet<DT_DEGREE>();
            DT_DEPARTMENT = new HashSet<DT_DEPARTMENT>();
            DT_EXAMIN = new HashSet<DT_EXAMIN>();
            DT_MENTORING = new HashSet<DT_MENTORING>();
            DT_PARTY_POST = new HashSet<DT_PARTY_POST>();
            DT_PUNISHMENT = new HashSet<DT_PUNISHMENT>();
            DT_RESEARCH = new HashSet<DT_RESEARCH>();
            DT_RESEARCH_TITLE = new HashSet<DT_RESEARCH_TITLE>();
            DT_TEACHING = new HashSet<DT_TEACHING>();
            EDUCATION_PROCESS = new HashSet<EDUCATION_PROCESS>();
            EXAMIN_HISTORY_ = new HashSet<EXAMIN_HISTORY_>();
            LOAD_BY_SEMESTER = new HashSet<LOAD_BY_SEMESTER>();
            LOAD_STATISTIC = new HashSet<LOAD_STATISTIC>();
            MENTORING_HISTORY = new HashSet<MENTORING_HISTORY>();
            OTHER_BUSINESS = new HashSet<OTHER_BUSINESS>();
            RESEARCH_HISTORY = new HashSet<RESEARCH_HISTORY>();
            TEACHER_HISTORY = new HashSet<TEACHER_HISTORY>();
            TEACHING_HISTORY = new HashSet<TEACHING_HISTORY>();
            TECH_AWARD = new HashSet<TECH_AWARD>();
        }

        [Key]
        [StringLength(10)]
        public string code { get; set; }

        [StringLength(20)]
        public string codeview { get; set; }

        [StringLength(200)]
        public string name { get; set; }

        [StringLength(200)]
        public string note { get; set; }

        [StringLength(20)]
        public string lastedituser { get; set; }

        public DateTime? lastedittime { get; set; }

        [Column("lock")]
        public short? _lock { get; set; }

        public DateTime? lockdate { get; set; }

        public int? theorder { get; set; }

        [StringLength(5)]
        public string gender { get; set; }

        [StringLength(1000)]
        public string Address { get; set; }

        [StringLength(1000)]
        public string hometown { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthday { get; set; }

        [StringLength(1000)]
        public string Email { get; set; }

        [StringLength(15)]
        public string phone { get; set; }

        [StringLength(10)]
        public string Departmentcode { get; set; }

        public bool? Haschild36m { get; set; }

        public int? finalremissionrate { get; set; }

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
        public virtual ICollection<DT_COUNCIL> DT_COUNCIL { get; set; }

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
