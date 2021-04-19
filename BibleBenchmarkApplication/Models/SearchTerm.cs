using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a model class which has properties for all attributes of a user search. 
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Models
{
    public class SearchTerm
    {
        // properties of a single user search
        [Required]
        [DisplayName("Testament")]
        public string Testament { get; set; }
        [Required]
        [DisplayName("Book Name")]
        public string BookNum { get; set; }
        [DisplayName("Chapter Number")]
        public int ChapterNum { get; set; }
        [DisplayName("Verse Number")]
        public int VerseNum { get; set; }
        public override string ToString()
        {
            return "Searching for Testament: " + Testament + " Book Name: " + BookNum + " Chapter Number: " + ChapterNum + " Verse Number: " + VerseNum;
        }
    }
}
