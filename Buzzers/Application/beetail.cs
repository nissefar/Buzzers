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
    
    public partial class beetail
    {
        public int id { get; set; }
        public Nullable<int> hivememberid { get; set; }
        public Nullable<int> haircolorid { get; set; }
        public Nullable<int> eyecolorid { get; set; }
        public Nullable<int> height { get; set; }
        public Nullable<int> weight { get; set; }
    
        public virtual eyecolor eyecolor { get; set; }
        public virtual haircolor haircolor { get; set; }
        public virtual hivemember hivemember { get; set; }
    }
}
