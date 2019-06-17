namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class DT_EXAMIN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DT_EXAMIN()
        {
            DT_MENTORING = new HashSet<DT_MENTORING>();
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

        [StringLength(10)]
        public string teachercode { get; set; }

        [StringLength(10)]
        public string subjectclasscode { get; set; }

        public int? numberofstudent { get; set; }

        public short? semester { get; set; }

        [StringLength(10)]
        public string Examintypecode { get; set; }

        public int? workloadpart { get; set; }

        public int? yearstart { get; set; }

        public virtual EXAMIN_TYPE EXAMIN_TYPE { get; set; }

        public virtual TEACHER TEACHER { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_MENTORING> DT_MENTORING { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_TEACHING> DT_TEACHING { get; set; }
    }
}
