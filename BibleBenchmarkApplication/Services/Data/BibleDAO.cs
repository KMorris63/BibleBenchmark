using BibleBenchmarkApplication.Models;
using BibleBenchmarkApplication.Services.Logging;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a the DAO which will access the database to return a verse
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Services.Data
{
    public class BibleDAO : IBibleDAO
    {
        // connection string for database
        string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Bible;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        /*
         * Returns Verse Details object
         * Try catch for database exception
         * SearchTerm as parameter
         */
        public VerseDetails FindVerse(SearchTerm term)
        {
            MyLogger.GetInstance().Info("Entering the Data Service to search for " + term.ToString());
            // assume we do not find anything
            VerseDetails foundVerse = null;
            // will hold the sql statement
            string sqlStatement;

            // if the user is searching by both old and new testament, use different sql statement
            if (term.Testament == "Both")
            {
                // dont check for testament
                sqlStatement = "SELECT t_kjv.id AS ID, t_kjv.b AS Book, t_kjv.c AS Chapter, t_kjv.v AS Verse, t_kjv.t AS Text, key_english.n AS Name FROM t_kjv JOIN key_english ON key_english.b = t_kjv.b WHERE t_kjv.b = @bookNum AND t_kjv.c = @chapter AND t_kjv.v = @verseNum";
            }
            else
            {
                // use prepared statements for security
                // select information required to create a verse details object
                // must join multiple tables to get the book name and check testament
                sqlStatement = "SELECT t_kjv.id AS ID, t_kjv.b AS Book, t_kjv.c AS Chapter, t_kjv.v AS Verse, t_kjv.t AS Text, key_english.n AS Name FROM t_kjv JOIN key_english ON key_english.b = t_kjv.b WHERE t_kjv.b = @bookNum AND c = @chapter AND t_kjv.v = @verseNum AND key_english.t = @testament";
            }

            // use sql database client connections
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // sql client database manipulation
                SqlCommand cmd = new SqlCommand(sqlStatement, connection);

                // define the values of the placeholders in the sql statment
                cmd.Parameters.AddWithValue("@bookNum", Int32.Parse(term.BookNum));
                cmd.Parameters.AddWithValue("@chapter", term.ChapterNum);
                cmd.Parameters.AddWithValue("@verseNum", term.VerseNum);
                // only define testament if they did not select both
                if (term.Testament != "Both")
                {
                    // for old testament
                    if (term.Testament == "Old")
                    {
                        cmd.Parameters.AddWithValue("@testament", "OT");
                    }
                    // for new testament
                    else
                    {
                        cmd.Parameters.AddWithValue("@testament", "NT");
                    }
                }

                // try catch in case of error
                try
                {
                    // reader will get data
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        // while results have been found
                        while (reader.Read())
                        {
                            // create a new verse details object with info
                            foundVerse = new VerseDetails();
                            // assign properties from reader results
                            foundVerse.Id = Convert.ToInt32(reader["ID"].ToString());
                            foundVerse.BookNum = Convert.ToInt32(reader["Book"].ToString());
                            foundVerse.ChapterNum = Convert.ToInt32(reader["Chapter"].ToString());
                            foundVerse.VerseNum = Convert.ToInt32(reader["Verse"].ToString());
                            foundVerse.VerseText = reader["Text"].ToString();
                            foundVerse.BookName = reader["Name"].ToString();
                            MyLogger.GetInstance().Info("In the Data Service, verse found: " + foundVerse.ToString());
                            // we only need the one verse
                            break;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                };
            }
            // return the product which was found, null if unable
            MyLogger.GetInstance().Info("Exiting the Data Service after searching for term");
            return foundVerse;
        }
    }
}
