namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CLASS")]
    public partial class CLASS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CLASS()
        {
            STUDENTs = new HashSet<STUDENT>();
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

        public int? numberof { get; set; }

        [StringLength(10)]
        public string edubranchcode { get; set; }

        public virtual EDU_BRANCH EDU_BRANCH { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<STUDENT> STUDENTs { get; set; }
    }
}
