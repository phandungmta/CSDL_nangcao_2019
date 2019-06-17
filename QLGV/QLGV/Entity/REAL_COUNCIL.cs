namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class REAL_COUNCIL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public REAL_COUNCIL()
        {
            DT_COUNCIL = new HashSet<DT_COUNCIL>();
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
        public string Councilcode { get; set; }

        public short? semester { get; set; }

        public int? workloadpart { get; set; }

        public int? yearstart { get; set; }

        public virtual COUNCIL COUNCIL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_COUNCIL> DT_COUNCIL { get; set; }
    }
}
