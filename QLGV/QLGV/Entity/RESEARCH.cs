namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RESEARCH")]
    public partial class RESEARCH
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RESEARCH()
        {
            DT_RESEARCH = new HashSet<DT_RESEARCH>();
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

        public int? Standartime { get; set; }

        [StringLength(10)]
        public string researchtypecode { get; set; }

        [Column(TypeName = "date")]
        public DateTime? finishtime { get; set; }

        [Column(TypeName = "date")]
        public DateTime? starttime { get; set; }

        [StringLength(50)]
        public string acceptancestatus { get; set; }

        [StringLength(20)]
        public string id { get; set; }

        public int? numberofauthors { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_RESEARCH> DT_RESEARCH { get; set; }

        public virtual RESEARCH_TYPE RESEARCH_TYPE { get; set; }
    }
}
