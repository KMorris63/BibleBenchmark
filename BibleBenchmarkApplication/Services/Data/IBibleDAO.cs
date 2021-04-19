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
 * This is a the data service interface to assist with dependency injection
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Data
{
    public interface IBibleDAO
    {
        // takes a search term as a parameter
        // returns a verse details object
        // finds the desired verse in the database
        public VerseDetails FindVerse(SearchTerm term);
    }
}
