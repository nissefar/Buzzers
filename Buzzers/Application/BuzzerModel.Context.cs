﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<beetail> beetails { get; set; }
        public virtual DbSet<buzz> buzzs { get; set; }
        public virtual DbSet<eyecolor> eyecolors { get; set; }
        public virtual DbSet<gender> genders { get; set; }
        public virtual DbSet<haircolor> haircolors { get; set; }
        public virtual DbSet<hivemember> hivemembers { get; set; }
        public virtual DbSet<image> images { get; set; }
        public virtual DbSet<match> matches { get; set; }
        public virtual DbSet<memberstory> memberstories { get; set; }
        public virtual DbSet<message> messages { get; set; }
        public virtual DbSet<preference> preferences { get; set; }
        public virtual DbSet<userlogin> userlogins { get; set; }
        public virtual DbSet<usertype> usertypes { get; set; }
    }
}
