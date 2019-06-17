namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class EDUCATION_PROCESS
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

        [StringLength(100)]
        public string bsedubranch { get; set; }

        [StringLength(1000)]
        public string Bsplace { get; set; }

        [StringLength(100)]
        public string Bsspecialization { get; set; }

        [StringLength(1000)]
        public string bscountry { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Bsyear { get; set; }

        [StringLength(100)]
        public string msspecialzation { get; set; }

        [Column(TypeName = "date")]
        public DateTime? yearms { get; set; }

        [StringLength(100)]
        public string msthesisname { get; set; }

        [StringLength(100)]
        public string phdspeciallization { get; set; }

        [Column(TypeName = "date")]
        public DateTime? yearphd { get; set; }

        [StringLength(100)]
        public string phdthesisname { get; set; }

        public virtual TEACHER TEACHER { get; set; }
    }
}
