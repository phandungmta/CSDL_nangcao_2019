namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class MENTORING_HISTORY
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
        public string mentoringtypename { get; set; }

        [StringLength(200)]
        public string studentname { get; set; }

        [StringLength(200)]
        public string classname { get; set; }

        [StringLength(200)]
        public string amountoftime { get; set; }

        public int? standardquantity { get; set; }

        [StringLength(200)]
        public string edubranchname { get; set; }

        [StringLength(200)]
        public string thesisname { get; set; }

        [StringLength(10)]
        public string dtcode { get; set; }

        public virtual TEACHER TEACHER { get; set; }
    }
}
