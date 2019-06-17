namespace QLGV.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class FACULTY_HISTORY
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
        public string facultycode { get; set; }

        [StringLength(200)]
        public string facultyname { get; set; }

        public int? totalnumber { get; set; }

        public int? profnumber { get; set; }

        public int? asprofnumber { get; set; }

        public int? doctorscinumber { get; set; }

        public int? doctornumber { get; set; }

        public int? masternumber { get; set; }

        public int? bachelornumber { get; set; }

        public int? otherpeoplenumber { get; set; }

        public int? totaltitle { get; set; }

        public int? seniorlecturenumber { get; set; }

        public int? lecturenumber { get; set; }

        public int? atstartnumber { get; set; }

        [StringLength(10)]
        public string dtcode { get; set; }

        public virtual FACULTY FACULTY { get; set; }
    }
}
