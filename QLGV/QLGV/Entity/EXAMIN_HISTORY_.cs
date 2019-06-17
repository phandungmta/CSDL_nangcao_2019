namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EXAMIN_HISTORY ")]
    public partial class EXAMIN_HISTORY_
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
        public string examintypename { get; set; }

        [StringLength(200)]
        public string subjectname { get; set; }

        [StringLength(200)]
        public string classname { get; set; }

        [Column(TypeName = "date")]
        public DateTime? amountoftime { get; set; }

        [StringLength(200)]
        public string subjectclassname { get; set; }

        public int? numberofstudent { get; set; }

        [Column(TypeName = "date")]
        public DateTime? start { get; set; }

        [Column(TypeName = "date")]
        public DateTime? end { get; set; }

        [StringLength(10)]
        public string dtcode { get; set; }

        public virtual TEACHER TEACHER { get; set; }
    }
}
