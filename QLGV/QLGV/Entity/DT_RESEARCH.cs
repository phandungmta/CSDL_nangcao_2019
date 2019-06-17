namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class DT_RESEARCH
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
        public string researchcode { get; set; }

        [StringLength(10)]
        public string teachercode { get; set; }

        public short? semester { get; set; }

        [StringLength(10)]
        public string researchrolecode { get; set; }

        public int? workloadpart { get; set; }

        public int? yearstart { get; set; }

        public virtual RESEARCH RESEARCH { get; set; }

        public virtual RESEARCH_ROLE RESEARCH_ROLE { get; set; }

        public virtual TEACHER TEACHER { get; set; }
    }
}
