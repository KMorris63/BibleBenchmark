using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a logger interface for easier logging
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Logging
{
    public interface ILogger
    {
        // properties for logging
        void Debug(string message);
        void Info(string message);
        void Warning(string message);
        void Error(string message);
    }
}
