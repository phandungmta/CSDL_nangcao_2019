namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SUBJECT_CLASS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SUBJECT_CLASS()
        {
            DT_SUBJECT_CLASS = new HashSet<DT_SUBJECT_CLASS>();
            DT_TEACHING = new HashSet<DT_TEACHING>();
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

        public int? numberof { get; set; }

        [StringLength(10)]
        public string subjectcode { get; set; }

        [Column(TypeName = "date")]
        public DateTime? start { get; set; }

        [Column(TypeName = "date")]
        public DateTime? end { get; set; }

        [StringLength(10)]
        public string edubranchcode { get; set; }

        public int? Semester { get; set; }

        public int? yearstart { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_SUBJECT_CLASS> DT_SUBJECT_CLASS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_TEACHING> DT_TEACHING { get; set; }

        public virtual EDU_BRANCH EDU_BRANCH { get; set; }

        public virtual SUBJECT SUBJECT { get; set; }
    }
}
