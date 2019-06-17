namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class LOAD_STATISTIC
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

        [StringLength(200)]
        public string teachername { get; set; }

        [StringLength(200)]
        public string departmentname { get; set; }

        [StringLength(200)]
        public string facultyname { get; set; }

        [Column(TypeName = "date")]
        public DateTime? start { get; set; }

        [Column(TypeName = "date")]
        public DateTime? end { get; set; }

        public int? realteachingload { get; set; }

        public int? requiredteachingload { get; set; }

        public int? teachingratio { get; set; }

        public int? realresearchload { get; set; }

        public int? requiredresearchload { get; set; }

        public int? researchratio { get; set; }

        public int? totalrealload { get; set; }

        public int? totalrequiredload { get; set; }

        public virtual TEACHER TEACHER { get; set; }
    }
}
