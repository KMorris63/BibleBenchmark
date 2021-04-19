using BibleBenchmarkApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a the business service interface for dependency injections
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Business
{
    public interface IBibleBusinessService
    {
        // to find a verse
        // takes a search term object as a parameter
        // returns a verse details object
        public VerseDetails FindVerse(SearchTerm term);
    }
}
