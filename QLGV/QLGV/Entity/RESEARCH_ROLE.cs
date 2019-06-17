namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class RESEARCH_ROLE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RESEARCH_ROLE()
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

        public double? coeficoent { get; set; }

        [StringLength(10)]
        public string workloadtypecode { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_RESEARCH> DT_RESEARCH { get; set; }

        public virtual WORKLOAD_TYPE WORKLOAD_TYPE { get; set; }
    }
}
