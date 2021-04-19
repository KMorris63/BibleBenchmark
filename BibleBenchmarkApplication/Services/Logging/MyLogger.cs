using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NLog;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is the logger which implements the logger interface
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Logging
{
    public class MyLogger : ILogger
    {
        // singleton design pattern
        private static MyLogger instance;
        private static Logger logger;

        // get the logger instance 
        public static MyLogger GetInstance()
        {
            if (instance == null)
            {
                instance = new MyLogger();
            }
            return instance;
        }
        // get the logger defined in the nlog config file
        private Logger GetLogger()
        {
            if (MyLogger.logger == null)
            {
                MyLogger.logger = LogManager.GetLogger("BibleAppLoggerRule");
            }
            return MyLogger.logger;
        }
        
        // Logger functions
        public void Debug(string message)
        {
            GetLogger().Debug(message);
        }

        public void Error(string message)
        {
            GetLogger().Error(message);
        }

        public void Info(string message)
        {
            GetLogger().Info(message);
        }

        public void Warning(string message)
        {
            GetLogger().Warn(message);
        }
    }
}
