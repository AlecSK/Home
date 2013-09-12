using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SimpleDictionary.ViewModels;
using Constants;

namespace SimpleDictionary.UnitTests
{
    [TestClass]
    public class UnitTest1
    {


        [TestMethod]
        public void TestMethod2()
        {
            const string ConnectionString =
                @"Data Source=(LocalDB)\Projects;AttachDbFilename=|DataDirectory|\DB\SupportDB.mdf;Integrated Security=True;Connect Timeout=3";
            var res = SDRepository.GetDictionary(ConnectionString, Dictionaries.DataTypesList);
            foreach (var parameter in res)
            {
                Debug.Print("{0} - {1}", parameter.IntValue, parameter.Description);
            }
        }
    }
}