namespace QLGV.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class dbcontex : DbContext
    {
        public dbcontex()
            : base("name=dbcontex")
        {
        }

        public virtual DbSet<ACADEMIC_RANK> ACADEMIC_RANK { get; set; }
        public virtual DbSet<ACCOUNT> ACCOUNTs { get; set; }
        public virtual DbSet<ADMINISTRATIVE_POST> ADMINISTRATIVE_POST { get; set; }
        public virtual DbSet<APPLIED_TECH_PRODUCT> APPLIED_TECH_PRODUCT { get; set; }
        public virtual DbSet<AWARD> AWARDs { get; set; }
        public virtual DbSet<BOOK> BOOKs { get; set; }
        public virtual DbSet<BOOK_HISTORY> BOOK_HISTORY { get; set; }
        public virtual DbSet<BOOK_TYPE> BOOK_TYPE { get; set; }
        public virtual DbSet<CLASS> CLASSes { get; set; }
        public virtual DbSet<COUNCIL> COUNCILs { get; set; }
        public virtual DbSet<COUNCIL_HISTORY> COUNCIL_HISTORY { get; set; }
        public virtual DbSet<COUNCIL_ROLE> COUNCIL_ROLE { get; set; }
        public virtual DbSet<COUNCIL_TYPE> COUNCIL_TYPE { get; set; }
        public virtual DbSet<DEGREE> DEGREEs { get; set; }
        public virtual DbSet<DEPARTMENT> DEPARTMENTs { get; set; }
        public virtual DbSet<DT_ACADEMIC_RANK> DT_ACADEMIC_RANK { get; set; }
        public virtual DbSet<DT_ADMINISTRATIVE_POST> DT_ADMINISTRATIVE_POST { get; set; }
        public virtual DbSet<DT_AWARD> DT_AWARD { get; set; }
        public virtual DbSet<DT_BOOK> DT_BOOK { get; set; }
        public virtual DbSet<DT_COUNCIL> DT_COUNCIL { get; set; }
        public virtual DbSet<DT_DEGREE> DT_DEGREE { get; set; }
        public virtual DbSet<DT_DEPARTMENT> DT_DEPARTMENT { get; set; }
        public virtual DbSet<DT_EXAMIN> DT_EXAMIN { get; set; }
        public virtual DbSet<DT_MENTORING> DT_MENTORING { get; set; }
        public virtual DbSet<DT_PARTY_POST> DT_PARTY_POST { get; set; }
        public virtual DbSet<DT_PUNISHMENT> DT_PUNISHMENT { get; set; }
        public virtual DbSet<DT_RESEARCH> DT_RESEARCH { get; set; }
        public virtual DbSet<DT_RESEARCH_TITLE> DT_RESEARCH_TITLE { get; set; }
        public virtual DbSet<DT_RIGHT> DT_RIGHT { get; set; }
        public virtual DbSet<DT_SUBJECT_CLASS> DT_SUBJECT_CLASS { get; set; }
        public virtual DbSet<DT_TEACHING> DT_TEACHING { get; set; }
        public virtual DbSet<EDU_BRANCH> EDU_BRANCH { get; set; }
        public virtual DbSet<EDU_LEVEL> EDU_LEVEL { get; set; }
        public virtual DbSet<EDUCATION_PROCESS> EDUCATION_PROCESS { get; set; }
        public virtual DbSet<EXAMIN_HISTORY_> EXAMIN_HISTORY_ { get; set; }
        public virtual DbSet<EXAMIN_TYPE> EXAMIN_TYPE { get; set; }
        public virtual DbSet<FACULTY> FACULTies { get; set; }
        public virtual DbSet<FACULTY_HISTORY> FACULTY_HISTORY { get; set; }
        public virtual DbSet<LOAD_BY_SEMESTER> LOAD_BY_SEMESTER { get; set; }
        public virtual DbSet<LOAD_STATISTIC> LOAD_STATISTIC { get; set; }
        public virtual DbSet<MENTORING_HISTORY> MENTORING_HISTORY { get; set; }
        public virtual DbSet<MENTORING_TYPE> MENTORING_TYPE { get; set; }
        public virtual DbSet<OTHER_BUSINESS> OTHER_BUSINESS { get; set; }
        public virtual DbSet<PARTY_POST> PARTY_POST { get; set; }
        public virtual DbSet<PUNISHMENT> PUNISHMENTs { get; set; }
        public virtual DbSet<REAL_COUNCIL> REAL_COUNCIL { get; set; }
        public virtual DbSet<RESEARCH> RESEARCHes { get; set; }
        public virtual DbSet<RESEARCH_HISTORY> RESEARCH_HISTORY { get; set; }
        public virtual DbSet<RESEARCH_ROLE> RESEARCH_ROLE { get; set; }
        public virtual DbSet<RESEARCH_TITLE> RESEARCH_TITLE { get; set; }
        public virtual DbSet<RESEARCH_TYPE> RESEARCH_TYPE { get; set; }
        public virtual DbSet<RIGHT> RIGHTs { get; set; }
        public virtual DbSet<RIGHT_GROUP> RIGHT_GROUP { get; set; }
        public virtual DbSet<STUDENT> STUDENTs { get; set; }
        public virtual DbSet<SUBJECT> SUBJECTs { get; set; }
        public virtual DbSet<SUBJECT_CLASS> SUBJECT_CLASS { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TEACHER> TEACHERs { get; set; }
        public virtual DbSet<TEACHER_HISTORY> TEACHER_HISTORY { get; set; }
        public virtual DbSet<TEACHING_HISTORY> TEACHING_HISTORY { get; set; }
        public virtual DbSet<TEACHING_TYPE> TEACHING_TYPE { get; set; }
        public virtual DbSet<TECH_AWARD> TECH_AWARD { get; set; }
        public virtual DbSet<THESIS> Theses { get; set; }
        public virtual DbSet<WORKLOAD_TYPE> WORKLOAD_TYPE { get; set; }
        public virtual DbSet<WRITING_ROLE> WRITING_ROLE { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ACADEMIC_RANK>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<ACADEMIC_RANK>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<ACADEMIC_RANK>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<ACADEMIC_RANK>()
                .Property(e => e.Researchtitlecode)
                .IsUnicode(false);

            modelBuilder.Entity<ACADEMIC_RANK>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<ACADEMIC_RANK>()
                .HasMany(e => e.DT_ACADEMIC_RANK)
                .WithOptional(e => e.ACADEMIC_RANK)
                .HasForeignKey(e => e.academicrankcode);

            modelBuilder.Entity<ACCOUNT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<ACCOUNT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<ACCOUNT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<ACCOUNT>()
                .Property(e => e.rightgroupcode)
                .IsUnicode(false);

            modelBuilder.Entity<ACCOUNT>()
                .Property(e => e.username)
                .IsUnicode(false);

            modelBuilder.Entity<ADMINISTRATIVE_POST>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<ADMINISTRATIVE_POST>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<ADMINISTRATIVE_POST>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<ADMINISTRATIVE_POST>()
                .HasMany(e => e.DT_ADMINISTRATIVE_POST)
                .WithOptional(e => e.ADMINISTRATIVE_POST)
                .HasForeignKey(e => e.Administrativepostcode);

            modelBuilder.Entity<APPLIED_TECH_PRODUCT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<APPLIED_TECH_PRODUCT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<APPLIED_TECH_PRODUCT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<APPLIED_TECH_PRODUCT>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<AWARD>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<AWARD>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<AWARD>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK>()
                .Property(e => e.booktypecode)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_HISTORY>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<BOOK_TYPE>()
                .HasMany(e => e.BOOKs)
                .WithOptional(e => e.BOOK_TYPE)
                .HasForeignKey(e => e.booktypecode);

            modelBuilder.Entity<CLASS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<CLASS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<CLASS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<CLASS>()
                .Property(e => e.edubranchcode)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL>()
                .Property(e => e.Counciltypecode)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_HISTORY>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_ROLE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_ROLE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_ROLE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_ROLE>()
                .HasMany(e => e.DT_COUNCIL)
                .WithOptional(e => e.COUNCIL_ROLE)
                .HasForeignKey(e => e.councilrolecode);

            modelBuilder.Entity<COUNCIL_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<COUNCIL_TYPE>()
                .HasMany(e => e.COUNCILs)
                .WithOptional(e => e.COUNCIL_TYPE)
                .HasForeignKey(e => e.Counciltypecode);

            modelBuilder.Entity<DEGREE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DEGREE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DEGREE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DEPARTMENT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DEPARTMENT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DEPARTMENT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DEPARTMENT>()
                .Property(e => e.facultycode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ACADEMIC_RANK>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ACADEMIC_RANK>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ACADEMIC_RANK>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ACADEMIC_RANK>()
                .Property(e => e.academicrankcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ACADEMIC_RANK>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.Administrativepostcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.facultycode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_ADMINISTRATIVE_POST>()
                .Property(e => e.departmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_AWARD>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_AWARD>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_AWARD>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_AWARD>()
                .Property(e => e.awardcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_AWARD>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.bookcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_BOOK>()
                .Property(e => e.writingrolecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.realcouncilcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_COUNCIL>()
                .Property(e => e.councilrolecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEGREE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEGREE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEGREE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEGREE>()
                .Property(e => e.degreecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEGREE>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.departmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_DEPARTMENT>()
                .Property(e => e.numberofdecision)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.subjectclasscode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .Property(e => e.Examintypecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_EXAMIN>()
                .HasMany(e => e.DT_MENTORING)
                .WithOptional(e => e.DT_EXAMIN)
                .HasForeignKey(e => e.teachercode);

            modelBuilder.Entity<DT_EXAMIN>()
                .HasMany(e => e.DT_TEACHING)
                .WithOptional(e => e.DT_EXAMIN)
                .HasForeignKey(e => e.teachingtypecode);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.studentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_MENTORING>()
                .Property(e => e.thesiscode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.Partypostcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.facultycode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PARTY_POST>()
                .Property(e => e.departmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PUNISHMENT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PUNISHMENT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PUNISHMENT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PUNISHMENT>()
                .Property(e => e.punishmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_PUNISHMENT>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.researchcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH>()
                .Property(e => e.researchrolecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH_TITLE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH_TITLE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH_TITLE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH_TITLE>()
                .Property(e => e.Researchtitlecode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RESEARCH_TITLE>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RIGHT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RIGHT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RIGHT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RIGHT>()
                .Property(e => e.rightcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_RIGHT>()
                .Property(e => e.rightgroupcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_SUBJECT_CLASS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_SUBJECT_CLASS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_SUBJECT_CLASS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_SUBJECT_CLASS>()
                .Property(e => e.studentcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_SUBJECT_CLASS>()
                .Property(e => e.subjectclasscode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.subjectcode)
                .IsUnicode(false);

            modelBuilder.Entity<DT_TEACHING>()
                .Property(e => e.teachingtypecode)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_BRANCH>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_BRANCH>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_BRANCH>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_BRANCH>()
                .Property(e => e.edulevelcode)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_BRANCH>()
                .HasMany(e => e.CLASSes)
                .WithOptional(e => e.EDU_BRANCH)
                .HasForeignKey(e => e.edubranchcode);

            modelBuilder.Entity<EDU_BRANCH>()
                .HasMany(e => e.SUBJECT_CLASS)
                .WithOptional(e => e.EDU_BRANCH)
                .HasForeignKey(e => e.edubranchcode);

            modelBuilder.Entity<EDU_LEVEL>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_LEVEL>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_LEVEL>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<EDU_LEVEL>()
                .HasMany(e => e.EDU_BRANCH)
                .WithOptional(e => e.EDU_LEVEL)
                .HasForeignKey(e => e.edulevelcode);

            modelBuilder.Entity<EDU_LEVEL>()
                .HasMany(e => e.MENTORING_TYPE)
                .WithOptional(e => e.EDU_LEVEL)
                .HasForeignKey(e => e.edulevelcode);

            modelBuilder.Entity<EDU_LEVEL>()
                .HasMany(e => e.TEACHING_TYPE)
                .WithOptional(e => e.EDU_LEVEL)
                .HasForeignKey(e => e.edulevelcode);

            modelBuilder.Entity<EDUCATION_PROCESS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<EDUCATION_PROCESS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<EDUCATION_PROCESS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<EDUCATION_PROCESS>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_HISTORY_>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_HISTORY_>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_HISTORY_>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_HISTORY_>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_HISTORY_>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<EXAMIN_TYPE>()
                .HasMany(e => e.DT_EXAMIN)
                .WithOptional(e => e.EXAMIN_TYPE)
                .HasForeignKey(e => e.Examintypecode);

            modelBuilder.Entity<FACULTY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY>()
                .Property(e => e.numberphone)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY_HISTORY>()
                .Property(e => e.facultycode)
                .IsUnicode(false);

            modelBuilder.Entity<FACULTY_HISTORY>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_BY_SEMESTER>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_BY_SEMESTER>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_BY_SEMESTER>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_BY_SEMESTER>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_STATISTIC>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_STATISTIC>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_STATISTIC>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<LOAD_STATISTIC>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_TYPE>()
                .Property(e => e.edulevelcode)
                .IsUnicode(false);

            modelBuilder.Entity<MENTORING_TYPE>()
                .HasMany(e => e.Theses)
                .WithOptional(e => e.MENTORING_TYPE)
                .HasForeignKey(e => e.mentoritypengcode);

            modelBuilder.Entity<OTHER_BUSINESS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<OTHER_BUSINESS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<OTHER_BUSINESS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<OTHER_BUSINESS>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<PARTY_POST>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<PARTY_POST>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<PARTY_POST>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<PARTY_POST>()
                .HasMany(e => e.DT_PARTY_POST)
                .WithOptional(e => e.PARTY_POST)
                .HasForeignKey(e => e.Partypostcode);

            modelBuilder.Entity<PUNISHMENT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<PUNISHMENT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<PUNISHMENT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<REAL_COUNCIL>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<REAL_COUNCIL>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<REAL_COUNCIL>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<REAL_COUNCIL>()
                .Property(e => e.Councilcode)
                .IsUnicode(false);

            modelBuilder.Entity<REAL_COUNCIL>()
                .HasMany(e => e.DT_COUNCIL)
                .WithOptional(e => e.REAL_COUNCIL)
                .HasForeignKey(e => e.realcouncilcode);

            modelBuilder.Entity<RESEARCH>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH>()
                .Property(e => e.researchtypecode)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_HISTORY>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_ROLE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_ROLE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_ROLE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_ROLE>()
                .Property(e => e.workloadtypecode)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_ROLE>()
                .HasMany(e => e.DT_RESEARCH)
                .WithOptional(e => e.RESEARCH_ROLE)
                .HasForeignKey(e => e.researchrolecode);

            modelBuilder.Entity<RESEARCH_TITLE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TITLE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TITLE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TITLE>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TITLE>()
                .HasMany(e => e.DT_RESEARCH_TITLE)
                .WithOptional(e => e.RESEARCH_TITLE)
                .HasForeignKey(e => e.Researchtitlecode);

            modelBuilder.Entity<RESEARCH_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TYPE>()
                .Property(e => e.workloadtypecode)
                .IsUnicode(false);

            modelBuilder.Entity<RESEARCH_TYPE>()
                .HasMany(e => e.RESEARCHes)
                .WithOptional(e => e.RESEARCH_TYPE)
                .HasForeignKey(e => e.researchtypecode);

            modelBuilder.Entity<RIGHT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT>()
                .Property(e => e.linkpath)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT_GROUP>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT_GROUP>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT_GROUP>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<RIGHT_GROUP>()
                .HasMany(e => e.ACCOUNTs)
                .WithOptional(e => e.RIGHT_GROUP)
                .HasForeignKey(e => e.rightgroupcode);

            modelBuilder.Entity<RIGHT_GROUP>()
                .HasMany(e => e.DT_RIGHT)
                .WithOptional(e => e.RIGHT_GROUP)
                .HasForeignKey(e => e.rightgroupcode);

            modelBuilder.Entity<STUDENT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<STUDENT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<STUDENT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<STUDENT>()
                .Property(e => e.classcode)
                .IsUnicode(false);

            modelBuilder.Entity<STUDENT>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT>()
                .Property(e => e.Departmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .Property(e => e.subjectcode)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .Property(e => e.edubranchcode)
                .IsUnicode(false);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .HasMany(e => e.DT_SUBJECT_CLASS)
                .WithOptional(e => e.SUBJECT_CLASS)
                .HasForeignKey(e => e.subjectclasscode);

            modelBuilder.Entity<SUBJECT_CLASS>()
                .HasMany(e => e.DT_TEACHING)
                .WithOptional(e => e.SUBJECT_CLASS)
                .HasForeignKey(e => e.subjectcode);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER>()
                .Property(e => e.Departmentcode)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHER_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_HISTORY>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_HISTORY>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_HISTORY>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_HISTORY>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_HISTORY>()
                .Property(e => e.dtcode)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_TYPE>()
                .Property(e => e.edulevelcode)
                .IsUnicode(false);

            modelBuilder.Entity<TEACHING_TYPE>()
                .HasMany(e => e.DT_TEACHING)
                .WithOptional(e => e.TEACHING_TYPE)
                .HasForeignKey(e => e.teachingtypecode);

            modelBuilder.Entity<TECH_AWARD>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<TECH_AWARD>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<TECH_AWARD>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<TECH_AWARD>()
                .Property(e => e.teachercode)
                .IsUnicode(false);

            modelBuilder.Entity<THESIS>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<THESIS>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<THESIS>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<THESIS>()
                .Property(e => e.mentoritypengcode)
                .IsUnicode(false);

            modelBuilder.Entity<WORKLOAD_TYPE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<WORKLOAD_TYPE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<WORKLOAD_TYPE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<WORKLOAD_TYPE>()
                .HasMany(e => e.RESEARCH_ROLE)
                .WithOptional(e => e.WORKLOAD_TYPE)
                .HasForeignKey(e => e.workloadtypecode);

            modelBuilder.Entity<WORKLOAD_TYPE>()
                .HasMany(e => e.RESEARCH_TYPE)
                .WithOptional(e => e.WORKLOAD_TYPE)
                .HasForeignKey(e => e.workloadtypecode);

            modelBuilder.Entity<WRITING_ROLE>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<WRITING_ROLE>()
                .Property(e => e.codeview)
                .IsUnicode(false);

            modelBuilder.Entity<WRITING_ROLE>()
                .Property(e => e.lastedituser)
                .IsUnicode(false);

            modelBuilder.Entity<WRITING_ROLE>()
                .HasMany(e => e.DT_BOOK)
                .WithOptional(e => e.WRITING_ROLE)
                .HasForeignKey(e => e.writingrolecode);
        }
    }
}
