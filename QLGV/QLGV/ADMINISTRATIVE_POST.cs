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
    
    public partial class ADMINISTRATIVE_POST
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ADMINISTRATIVE_POST()
        {
            this.DT_ADMINISTRATIVE_POST = new HashSet<DT_ADMINISTRATIVE_POST>();
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
        public Nullable<int> remissionrate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DT_ADMINISTRATIVE_POST> DT_ADMINISTRATIVE_POST { get; set; }
    }
}
