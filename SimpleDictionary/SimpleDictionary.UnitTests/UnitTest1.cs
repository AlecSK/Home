﻿using System;
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
        public void TestMethod1()
        {
            var a = 1;
            var b = 4; 
            var c = "2";
            c += a++ + b.ToString() + ++a;
            Debug.Print("{0}", c);
        }

        [TestMethod]
        public void TestMethod2()
        {
            const string ConnectionString = "Data Source=10.1.1.127;Initial Catalog=PRIZ;Persist Security Info=True;User ID=sa;Password=zXcvbnm512;Connect Timeout=3";
            var res = SDRepository.GetDictionary(ConnectionString, Dictionaries.DataType);
            foreach (var parameter in res)
            {
                Debug.Print("{0} - {1}", parameter.IntValue, parameter.Description);
            }
            
        }

    }
}