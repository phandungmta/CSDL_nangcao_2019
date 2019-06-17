namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ACADEMIC_RANK
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ACADEMIC_RANK()
        {
            DT_ACADEMIC_RANK = new HashSet<DT_ACADEMIC_RANK>();
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

        public int? quotahour { get; set; }

        [StringLength(10)]
        public string Researchtitlecode { get; set; }

        [StringLength(10)]
        public string teachercode { get; set; }

        [StringLength(1000)]
        public string place { get; set; }

        [Column(TypeName = "date")]
        public DateTime? time { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_ACADEMIC_RANK> DT_ACADEMIC_RANK { get; set; }
    }
}
