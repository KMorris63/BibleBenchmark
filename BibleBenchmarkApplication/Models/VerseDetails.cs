using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/*
 * Kacey Morris
 * April 18, 2021
 * CST 247
 * Bible Benchmark
 * This is a model class which has properties for all attributes of a bible verse. 
 * 
 * This is my own work as influenced by class time and assignments.
 * Retrieved Bible Database from https://github.com/scrollmapper/bible_databases/tree/master/mssql.
 */

namespace BibleBenchmarkApplication.Models
{
    public class VerseDetails
    {
        // properties of a verse 
        public int Id { get; set; }
        public int BookNum { get; set; }
        public string BookName { get; set; }
        public int ChapterNum { get; set; }
        public int VerseNum { get; set; }
        public string VerseText { get; set; }
        // data constructor
        public VerseDetails(int id, int bookNum, string bookName, int chapterNum, int verseNum, string verseText)
        {
            this.Id = id;
            this.BookNum = bookNum;
            this.BookName = bookName;
            this.ChapterNum = chapterNum;
            this.VerseNum = verseNum;
            this.VerseText = verseText;
        }
        // default constructor
        public VerseDetails()
        {

        }
        // overwritten to string method to be used by logger
        public override string ToString()
        {
            // all properties to record in the logger
            return "ID: " + Id + " Book Number: " + BookNum + " Book Name: " + BookName + " Chapter Number: " + ChapterNum + " Verse Number " + VerseNum + " Verse Text: " + VerseText;
        }
    }
}
