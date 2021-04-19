using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a model class which has properties for all attributes of a bible book. 
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Models
{
    public class BookDetails
    {
        // properties of a book
        public int Id { get; set; }
        public int BookNum { get; set; }
        public string BookName { get; set; }
    }
}
