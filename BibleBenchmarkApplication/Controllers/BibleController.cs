using BibleBenchmarkApplication.Models;
using BibleBenchmarkApplication.Services.Business;
using BibleBenchmarkApplication.Services.Logging;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a the controller for the bible functions
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Controllers
{
    public class BibleController : Controller
    {
        // business service using DEPENDENCY INJECTIONS
        public IBibleBusinessService service { get; set; }

        // constructor for the interface dependency injection
        public BibleController(IBibleBusinessService bs)
        {
            service = bs;
        }

        // index never used
        public IActionResult Index()
        {
            return View();
        }
        // returns the search form
        public IActionResult Search()
        {
            // update logger
            MyLogger.GetInstance().Info("Loading the Search Form.");
            return View();
        }
        // retrieves the results and returns appropriate page
        public IActionResult Result(SearchTerm term)
        {
            MyLogger.GetInstance().Info("Getting results for : " + term.ToString());
            // save the result of the search
            VerseDetails model = service.FindVerse(term);
            // if we got a result, display the result on the results page
            if (model != null)
            {
                MyLogger.GetInstance().Info("Loading results page with Model: " + model.ToString());
                return View("Result", model);
            }
            else
            {
                // if there was no result, display the results not found page
                MyLogger.GetInstance().Info("Found no results. Loading no results page. ");
                return View("NoResult");
            }
        }
    }
}
