//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Application
{
    using System;
    using System.Collections.Generic;
    
    public partial class hivemember
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hivemember()
        {
            this.beetails = new HashSet<beetail>();
            this.buzzs = new HashSet<buzz>();
            this.buzzs1 = new HashSet<buzz>();
            this.images = new HashSet<image>();
            this.matches = new HashSet<match>();
            this.matches1 = new HashSet<match>();
            this.messages = new HashSet<message>();
            this.messages1 = new HashSet<message>();
            this.userlogins = new HashSet<userlogin>();
        }
    
        public int id { get; set; }
        public Nullable<int> preferenceid { get; set; }
        public Nullable<int> usertypeid { get; set; }
        public Nullable<int> genderid { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string nick { get; set; }
        public string email { get; set; }
        public System.DateTime birthdate { get; set; }
        public string bio { get; set; }
        public string jobtitle { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<beetail> beetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<buzz> buzzs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<buzz> buzzs1 { get; set; }
        public virtual gender gender { get; set; }
        public virtual preference preference { get; set; }
        public virtual usertype usertype { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<image> images { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<message> messages { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<message> messages1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<userlogin> userlogins { get; set; }
    }
}
