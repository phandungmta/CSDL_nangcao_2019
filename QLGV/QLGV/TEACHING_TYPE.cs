//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLGV
{
    using System;
    using System.Collections.Generic;
    
    public partial class TEACHING_TYPE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TEACHING_TYPE()
        {
            this.DT_TEACHING = new HashSet<DT_TEACHING>();
        }
    
        public string code { get; set; }
        public string codeview { get; set; }
        public string name { get; set; }
        public string note { get; set; }
        public string lastedituser { get; set; }
        public Nullable<System.DateTime> lastedittime { get; set; }
        public Nullable<short> @lock { get; set; }
        public Nullable<System.DateTime> lockdate { get; set; }
        public Nullable<int> theorder { get; set; }
        public string edulevelcode { get; set; }
        public Nullable<double> coefficent { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_TEACHING> DT_TEACHING { get; set; }
    }
}
