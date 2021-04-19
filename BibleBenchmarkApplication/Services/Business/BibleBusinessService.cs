using BibleBenchmarkApplication.Models;
using BibleBenchmarkApplication.Services.Data;
using BibleBenchmarkApplication.Services.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a the business service which will enforce all business rules when accessing the data service
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Business
{
    public class BibleBusinessService : IBibleBusinessService
    {
        // for dependency injections
        public IBibleDAO dao { get; set; }
        // dependency injections passed as parameter to the constructor
        public BibleBusinessService(IBibleDAO bibleDao)
        {
            // assign the interface connected dao to the dao utilized in the business service
            dao = bibleDao;
        }
        public VerseDetails FindVerse(SearchTerm term)
        {
            MyLogger.GetInstance().Info("Entering the Business Service to search " + term.ToString());
            // return the verse found
            return dao.FindVerse(term);
        }
    }
}
