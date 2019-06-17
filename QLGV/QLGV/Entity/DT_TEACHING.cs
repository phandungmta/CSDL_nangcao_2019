namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class DT_TEACHING
    {
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
        public string subjectcode { get; set; }

        [StringLength(10)]
        public string teachingtypecode { get; set; }

        [Column(TypeName = "date")]
        public DateTime? time { get; set; }

        public short? semester { get; set; }

        public int? workloadpart { get; set; }

        public int? yearstart { get; set; }

        public virtual DT_EXAMIN DT_EXAMIN { get; set; }

        public virtual SUBJECT_CLASS SUBJECT_CLASS { get; set; }

        public virtual TEACHER TEACHER { get; set; }

        public virtual TEACHING_TYPE TEACHING_TYPE { get; set; }
    }
}
