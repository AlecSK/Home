﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.18033
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SimpleDictionary.Properties {
    using System;
    
    
    /// <summary>
    ///   Класс ресурса со строгой типизацией для поиска локализованных строк и т.д.
    /// </summary>
    // Этот класс создан автоматически классом StronglyTypedResourceBuilder
    // с помощью такого средства, как ResGen или Visual Studio.
    // Чтобы добавить или удалить член, измените файл .ResX и снова запустите ResGen
    // с параметром /str или перестройте свой проект VS.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Возвращает кэшированный экземпляр ResourceManager, использованный этим классом.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("SimpleDictionary.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Перезаписывает свойство CurrentUICulture текущего потока для всех
        ///   обращений к ресурсу с помощью этого класса ресурса со строгой типизацией.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Ищет локализованную строку, похожую на /****** Object:  Table [dbo].[SimpleDictionary]    Script Date: 16.01.2013 11:02:31 ******/
        ///SET ANSI_NULLS ON
        ///GO
        ///
        ///SET QUOTED_IDENTIFIER ON
        ///GO
        ///
        ///SET ANSI_PADDING ON
        ///GO
        ///
        ///--ALTER DATABASE CURRENT 
        ///--COLLATE Cyrillic_General_CI_AS
        ///
        ///CREATE TABLE [dbo].[SimpleDictionary] (
        ///    [SD]           INT            NOT NULL,
        ///    [RecType]      CHAR (1)       NULL,
        ///    [ParentSD]     INT            NULL,
        ///    [CurrentN]     INT            NOT NULL,
        ///    [Name]         VARCHAR (100)  NOT NULL,
        ///    [Descripti [остаток строки не уместился]&quot;;.
        /// </summary>
        internal static string CreateTable {
            get {
                return ResourceManager.GetString("CreateTable", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Поиск локализованного ресурса типа System.Drawing.Bitmap.
        /// </summary>
        internal static System.Drawing.Bitmap CS_Code_Sample {
            get {
                object obj = ResourceManager.GetObject("CS_Code_Sample", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Ищет локализованную строку, похожую на /************************************************************
        /// * Generated by SoftTree SQL Assistant © 6.3.153
        /// * Time:   14.03.2013 11:20:01
        /// * Source: SimpleDictionary
        /// ************************************************************/
        ///
        ////* Inserting SimpleDictionary data... */
        ///
        ///
        ///--ALTER DATABASE CURRENT 
        ///--COLLATE Cyrillic_General_CI_AS
        ///
        ///DELETE FROM SimpleDictionary
        ///WHERE ParentSD = 11
        ///GO
        ///DELETE FROM SimpleDictionary
        ///WHERE SD = 11 
        ///GO
        ///
        ///IF NOT EXISTS(SELECT * FROM SimpleDictionary WHERE Paren [остаток строки не уместился]&quot;;.
        /// </summary>
        internal static string InsertData {
            get {
                return ResourceManager.GetString("InsertData", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Ищет локализованную строку, похожую на &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
        ///&lt;xs:schema xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:xsd=&quot;http://www.w3.org/2001/XMLSchema&quot; xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot; attributeFormDefault=&quot;unqualified&quot; elementFormDefault=&quot;qualified&quot;&gt;
        ///  &lt;xsd:element name=&quot;ArrayOfSDOption&quot;&gt;
        ///    &lt;xsd:complexType&gt;
        ///      &lt;xsd:sequence&gt;
        ///        &lt;xsd:element maxOccurs=&quot;unbounded&quot; name=&quot;SDOption&quot;&gt;
        ///          &lt;xsd:complexType&gt;
        ///            &lt;xsd:attribute name=&quot;Description&quot; type=&quot;xsd:string&quot; use=&quot;requir [остаток строки не уместился]&quot;;.
        /// </summary>
        internal static string SDOptions {
            get {
                return ResourceManager.GetString("SDOptions", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Поиск локализованного ресурса типа System.Drawing.Bitmap.
        /// </summary>
        internal static System.Drawing.Bitmap Схема {
            get {
                object obj = ResourceManager.GetObject("Схема", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
    }
}