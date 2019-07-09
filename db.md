---
layout: slides
title: Data Formats and Databases
---

<section markdown="block" class="intro-slide">
# Data Formats and Databases

</section>

<section markdown="block">
##  Storing Data
</section>

<section markdown="block">
##  It's All 0's and 1's

* computers deal with data as a series of __bits__ or _binary digits_
* a __bit__ (binary digit) can hold only one of two values, a __0__ or __1__
* turns out, storing 0's and 1's is convenient for computers. __why?__ &rarr;

<div class="fragment" markdown="block">
* easily represented by electronics!
* 0 and 1 are essentially analogous to off and on 💡
* (or the presence or absence of a specific charge or voltage, or if some material is magnetized or not) 🔌
</div>
</section>

<section markdown="block">
## Physical Media

To prove that I'm not lying  🤥 about this whole 0's and 1's thing, let's look at some actual physical media where we might store some date.

The following __physical media__ is a bit _outdated_, but it still illustrates that data is just 0's and 1's:

* [punch cards](https://en.wikipedia.org/wiki/Punched_card#/media/File:IBM1130CopyCard.agr.jpg) 🕳  🕳 🕳 
* [an image of measurements of magnetic forces on a hard drive platter](http://blogs.discovermagazine.com/d-brief/2015/07/30/data-hard-drive/) 🧲

</section>

<section markdown="block">
##  Back to Bits

If I have __1 bit__, how __many possible values can that bit represent__ (one way to think about this is: what are the possible values that the single bit can hold)? &rarr;

<div class="fragment" markdown="block">
* 2 pieces of information:
	* 0 and 1
</div>

__How about 2 sequential bits?__ &rarr;
{:.fragment}

* 4 (2 x 2) pieces of information (or 4 different combinations of 0's and 1's):
	* 00, 01, 10, 11
{:.fragment}
</section>

<section markdown="block">
##  Bytes

A __byte__ is __8 bits__.  How many possible __combinations__ of __0's and 1's__ are there in __8 bits?__ &rarr;

<div class="fragment" markdown="block">
* 256 possible combinations (2 x 2 x 2 x 2 x 2 x 2 x 2 x 2)!
* computers can use a __byte__ to encode different kinds of data!
	* numbers
	* letters
</div>
</section>

<section markdown="block">
## A Step Back

Given this number: __1,815__.... __What does the number 8 represent? What about the number 5?__ &rarr;

* {:.fragment} the number of "100's" and the number of "1's"
* {:.fragment} __What's the relationship among the numbers, 1, 10, 100, and 1000?__
* {:.fragment} they're all powers of 10
* {:.fragment} so one way to think about 1,815 is:
	* {:.fragment} Add 1 * 10^3  to 8 * 10^2... etc.
* {:.fragment} side note... given a single digit (or a place in a number), what are the possible values of that digit?
	* {:.fragment} 0 through 9


</section>

<section markdown="block">
## A Question

__What if a numbering system existed that were not based on powers of 10? 🤯__ &rarr;

* {:.fragment} perhaps using powers of 2...
	* {:.fragment} the possible values of each digit are 0 and 1
	* {:.fragment} hey, that sounds familiar! 🤔
	* {:.fragment} this is called __binary__
* {:.fragment} or powers of 16 
	* {:.fragment} there are 16  possible values: 1-9, A-F 
	* {:.fragment} this is called __hexadecimal__

</section>

<section markdown="block">
##  Storing Numbers

__Using a binary numbering system, a computer can store the numbers 0 through 255 in a single _byte_.__ &rarr;

* a series of 8 bits represents numbers 0 to 255
* each bit is in a place: `_ _ _ _ _ _ _ _`
* each place represents the presence or absence of a power of 2:
* summing all of the places gives the decimal version...
</section>

<section markdown="block">
## Binary Numbering System

__An example of a number based on powers of 2: 00101000__ &rarr;

<pre><code data-trim contenteditable> 2^7 | 2^6 | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0
----+-----+-----+-----+-----+-----+-----+-----
128 | 64  | 32  | 16  |  8  |  4  |  2  |  1
----+-----+-----+-----+-----+-----+-----+-----
 0  |  0  |  1  |  0  |  1  |  0  |  0  |  0  
----+-----+-----+-----+-----+-----+-----+-----
</code></pre>

<pre><code data-trim contenteditable>32 + 8 = 40
</code></pre>
{:.fragment}


</section>

<section markdown="block">
##  Storing Numbers Continued

* {:.fragment} the first bit represents either 0 or 1 ...  __1__'s
* {:.fragment} the second bit represents either 0 or 1 ...  __2__'s
* {:.fragment} the third bit represents either 0 or 1 ... __4__'s
* {:.fragment} the fourth bit represents either 0 or 1 ... __8__'s
* {:.fragment} .... and so on through the 8th bit, or 2 to the 7th, which represents 128 (notice that each place is just a power of 2, starting at 2 to the 0th power!)
* {:.fragment} all of these added together give a number between 0 and 255
* {:.fragment} sometimes this is called a base-2 numeral system (compared with base-10 / decimal that we're familiar with)
</section>


<section markdown="block">
##  Storing Numbers - Examples

* __00011100__
	* (0 x 128) + (0 x 64) + (0 x 32) + (1 x 16) + (1 x 8) +  (1 x 4) + (0 x 2) + (0 x 1)
	* &rarr; 28
* __01000010__
	* (0 x 128) + (1 x 64) + (0 x 32) + (0 x 16) + (0 x 8) +  (0 x 4) + (1 x 2) + (0 x 1)
	* &rarr; 66
</section>

<section markdown="block">
##  Storing Numbers - Questions

__00000001__ &rarr;

1
{:.fragment}

__00000010__ &rarr;
{:.fragment}

2
{:.fragment}

__00000011__ &rarr;
{:.fragment}

3
{:.fragment}

__00000100__ &rarr;
{:.fragment}

4
{:.fragment}

</section>

<section markdown="block">
##  Storing Numbers - Questions Continued

<div class="fragment" markdown="block">
__10000101__ &rarr;

133
{:.fragment}

__10000001__ &rarr;
{:.fragment}

129
{:.fragment}

__00100000__ &rarr;
{:.fragment}

32
{:.fragment}

</div>
</section>

<section markdown="block">
##  An Addendum to Storing Numbers

* note that this works well for integers...
* specifically 0 through 255
* {:.fragment} what if we need more numbers? <strong class="fragment">use more bits!</strong>
* {:.fragment} this still isn't quite enough, though: __what are some other characteristics of numbers that can be encoded?__ &rarr;
	* {:.fragment} sign (negative or positive numbers)
	* {:.fragment} decimal point (real / floating point numbers)

</section>

<section markdown="block">
##  Storing Letters and Other Characters

Storing numbers is a breeze - using bits to represent binary numbers works well.  __How do you think letters and punctuation are stored using bits?__ &rarr;

<div class="fragment" markdown="block">
Since it's easy to store numbers, use some sort of encoding scheme that translates numeric values into characters.
</div>
</section>

<section markdown="block">
##  ASCII

One encoding scheme is called __ASCII__.

* __ASCII__ defines a set of numeric codes that can be translated to English letters, punctuation marks and other characters
* the first version of __ASCII__ stored characters in 7 bits

__How many different characters can be stored in 7 bits?__ &rarr;

128 characters... [see the table on wikipedia](http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters)
{:.fragment}

There are also many encodings that [extended ASCII by using 8 bits instead of 7](https://en.wikipedia.org/wiki/Extended_ASCII), and one common version is: [ISO 8859-1](https://en.wikipedia.org/wiki/ISO/IEC_8859-1#Code_page_layout)
{:.fragment}

</section>

<section markdown="block">
##  ASCII Continued

ASCII is an older encoding scheme that has some flaws.  __What do you think ASCII's major shortcoming is?__ &rarr;

<div class="fragment" markdown="block">
* it can only store 128 _English_ characters!
* what about additional alphabets and writing systems?
* (for example Chinese characters number in the tens of thousands)
</div>
</section>

<section markdown="block">
##  Unicode

The current __standard__ for consistently representing text through different character sets and encodings is called __unicode__.

* in __unicode__, __code points__ are numbers (specifically integers) that represents a _character_ or _glyph_
* the most current version of unicode supports 110,000 characters
* here's a table of [code points](http://www.utf8-chartable.de/unicode-utf8-table.pl?utf8=dec)
	* note that 65-90 are uppercase latin letters; 97-122 are lowercase
	* this matches the older, but limited encoding scheme, ASCII
* here's a [unicode snowman](http://unicodesnowmanforyou.com)
</section>

<section markdown="block">
##  utf-8, utf-16, utf-32

__unicode__ is just the mapping of numbers to _glyphs_ (characters / symbols)... but the actual storage of those numbers is the _encoding_. So unicode can be encoded as utf-8, utf-16, or utf-32.

__What's the difference?__ It's all unicode, _right_? 🙃
{:.fragment}

* {:.fragment} __utf-8__ is actually a __variable length encoding__; it's minimally 1 byte, but could be up to 4 bytes! It's also compatible with ASCII
* {:.fragment} __utf-16__ is also variable length: either 2 bytes or 4 bytes
* {:.fragment} __utf-32__ is fixed length 4 bytes

__Y SO MANY ENCODINGS FOR UNICODE?__ &rarr;
{:.fragment}

</section>

<section markdown="block">
## Which Unicode Encoding to Use?

Ok... __why use one encoding over another__ (utf-8 vs 16 vs 32)? &rarr;

* {:.fragment} if text is english (mostly ASCII), then use utf-8... <span class="fragment">why?</span>
	* {:.fragment} __takes up less space__!
* {:.fragment} if other language, choose the encoding that best accommodates that character set
</section>
<section markdown="block">
## Can We See the 1's and 0's?

In an earlier slide, we saw the physical medium that stores data shows 1's and 0's... __but can we see those 1's and 0's instead of the text from a file__ &rarr;

Yes! Some systems have a commandline tool called `xxd` to _dump_ the binary version of a file... but you can also check out some graphical tools [like this online app](http://www.ddginc-usa.com/online-hex-dump.htm)
{:.fragment}

Let's do a quick demo where we:
{:.fragment}

1. {:.fragment} create a file
2. {:.fragment} dump the binary
3. {:.fragment} manually decode the binary and compare to the file

</section>

<section markdown="block">
## Uh Oh... Mystery File! 🕵

Ok. Sooo... how is this practical _at all_? __Why might knowing about encodings be useful?__ &rarr;

__Sometimes you source a file, but you don't know what encoding it is__
{:.fragment}


* {:.fragment} If you have a series of bytes, you can decode with an scheme of your choice (utf-8, latin-1, etc.?)
* {:.fragment} Automatic detection of encoding is tricky! (type of encoding isn't embedded in a file!)
* {:.fragment} Different editors / viewers will use different strategies, but no guarantee guess will be right! 😮
* {:.fragment} btw, some tools: `file` and [enca](https://github.com/nijel/enca)

</section>


<!--
<section markdown="block">
## DOCX? 

* create sample docx file
	* cat it
	* unzip it
	* xml!

</section>
<section markdown="block">
## Other Data

http://paulbourke.net/dataformats/tiff/

</section>
-->

<section markdown="block">
## Let's Play a Character Encoding Game

FUN! 🙄

* Download this file: [Olaf van Geldern, by Pencho Slaveykov](https://www.kaggle.com/rtatman/character-encoding-examples)
* Try opening it just by double clicking on it... what do you see?
	* {:.fragment} It's actually not encoded in Unicode (or even ASCII)
	* {:.fragment} It's encoded using [Windows-1251](https://en.wikipedia.org/wiki/Windows-1251)
	* {:.fragment} (Note that the differences with [extended ASCII](http://www.asciitable.com/)
</section>


<section markdown="block">
## Data Formats

We'll be mainly discussing data available in __“human-readable”__ formats... 👀

Ummm... what do we _mean_ by saying that? &rarr;
{:.fragment} 

* {:.fragment} the physical file is formatted...
* {:.fragment} and the data is stored in such a way 💾
* {:.fragment} that one can open it in a __text editor__ (notepad, textedit), __and _actually_ read it__ 📝
* {:.fragment} sometimes, files that store human-readable data are called __plain-text files__


</section>

<section markdown="block">
## Data Formats - Examples

Can you think of examples of some __human readable file formats__ and their __file name extensions__? &rarr;

* {:.fragment} __TXT__ (generally tab-delimited or fixed width)
* {:.fragment} __CSV__ (comma-separated values; comma-delimited)
* {:.fragment} __XML__ (Extensible Mark-up Language)
* {:.fragment} __JSON__ (JavaScript Object Notation)

Are there any other data formats that you've encountered? &rarr;
{:.fragment} 

Let's go through these formats in more detail! &rarr;
{:.fragment}

</section>


<section markdown="block">
## .TXT and .CSV Files

__Tab-delimited__ and <strong>C</strong>omma <strong>S</strong>eparated <strong>Values</strong> files (.txt and .csv respectively) are widely available online and from a variety of data sources.

These files are “human-readable” and can be easily imported into spreadsheets and databases. ... Some examples:
{:.fragment}

* {:.fragment} [Comma-separated values or comma-delimited: NYC Open data list of colleges](https://data.cityofnewyork.us/Education/Colleges-and-Universities/4kym-4xw5) 

__Let's check out some of these files in a text editor, as well as a spreadsheet...__ &rarr;
{:.fragment}

</section>


<section markdown="block">
## .TXT and .CSV Files Continued

__What are some observations that you can make about these files?__ &rarr;

* {:.fragment} may or may not have a first row of column __headers__
* {:.fragment} headers may be difficult to interpret without __companion documentation__ or __data dictionary__
	* {:.fragment} here's a _crazy_ example of some very [thorough documentation](https://www.ars.usda.gov/ARSUserFiles/80400525/Data/SR-Legacy/SR-Legacy_Doc.pdf) for this set of data for the [USDA National Nutrient Database](https://www.ars.usda.gov/ARSUserFiles/80400525/Data/SR-Legacy/SR-Leg_ASC.zip) (see ~pg 9)
* {:.fragment} CSV can mean _delimited by a character other than comma!_ (😲)
* {:.fragment} what if you want the separator character in your actual data? (one strategy: "wrap it in quotation marks")
</section>

<section markdown="block">
## .TXT and .CSV Summary

* {:.fragment} human readable, plain text format
* {:.fragment} language and platform independent
* {:.fragment} represents tabular data: __columns__ represents __fields__, __row__ represents __entity__ (_thing_ being stored)
* {:.fragment} first row may be header (defines columns / fields)
* {:.fragment} values in rows are separated by a specific character
	* {:.fragment} common __delimiters__ (separator character) include:
	* {:.fragment} commas, tabs and pipes

<pre><code data-trim contenteditable>field1, field2, field3
foo, bar, baz
qux, quux, corge
</code></pre>
{:.fragment}
</section>
<section markdown="block">
## Markup Languages


Before we talk about __XML__, let's discuss  __markup languages__: 

* {:.fragment} system of annotating content (text, images, etc.) ✏️
* {:.fragment} the syntax of the annotations make the annotations easily distinguishable from the _actual_ content itself
* {:.fragment} some examples:
	* {:.fragment} text processing commands in __[LaTeX](https://en.wikipedia.org/wiki/LaTeX#Example)__ ...
	* {:.fragment} tags in both __HTML__ ("view source on this page!) and __XML__


</section>

<section markdown="block">
## Tags 

Note that __HTML__ and __XML__ use __tags__ for annotation 🏷️

* {:.fragment} a __tag__ is an annotation where the annotation itself appears between less than (&lt;) and greater than signs (&gt;)
* {:.fragment} and the __content__ often appears between a set of two tags (an opening and closing tag)

<pre><code data-trim contenteditable>&lt;tagName&gt;Some great content goes here!&lt;/tagName&gt;
</code></pre>
{:.fragment}


</section>

<section markdown="block">
## .XML

Speaking of __XML__ and __tags__...

* {:.fragment} e<strong>X</strong>tensible <strong>M</strong>arkup <strong>L</strong>anguage 
* {:.fragment} looks _a lot_ like another markup language: html &lt;😺😺&gt;
* {:.fragment} known for being __verbose__... 🗣️
* {:.fragment} particularly suited for modeling data that:
	* has a nested structure ...
	* like a parent/child 👩‍👦‍👦 or a tree-like relationship among data 🌳
</section>

<section markdown="block">
## XML Continued

__XML__ itself is the building block of other formats

* {:.fragment} it's a general markup language in that it __defines syntax__, __but not tags__; you must define tags yourself through an __XML Schema__ (or alternatively, through a <strong>D</strong>ocument <strong>T</strong>ype <strong>D</strong>eclaration)
* {:.fragment} an __XML Schema__ imposes user defined constraints on the structure and content of an XML file 🔨
	* {:.fragment} essentially, the schema defines the semantic rules that an XML file must conform to!
* {:.fragment} ...which means other markup languages (and consequently other file formats) are __built on top of XML__ 🏗️

</section>

<section markdown="block">
## Formats Built on XML

__Can you think of any file formats that are built on top of XML__ &rarr;

* {:.fragment} __SVG__ - <strong>S</strong>calable <strong>V</strong>ector <strong>G</strong>raphics 
	* let's draw a rectangle or check out [an example of some basic shapes](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes)) &rarr;
* {:.fragment} __TEI__ - <strong>T</strong>ext <strong>E</strong>ncoding <strong>I</strong>nitiative - markup that provides [structural and descriptive meta data, like sentences, words and lines](http://teibyexample.org/modules/TBED00v00.htm#teimodules) about text 
	* see the [examples on wikipedia](https://en.wikipedia.org/wiki/Text_Encoding_Initiative#Examples) or take a look at a poem by William Carlow Williams) &rarr;
* {:.fragment} and _sooooo_ many others... including [<strong>R</strong>esource <strong>D</strong>escription <strong>F</strong>ramework](http://www.xml.com/pub/a/2001/01/24/rdf.html), [<strong>R</strong>eally <strong>S</strong>imple <strong>S</strong>yndication](https://daringfireball.net/feeds/main), __XHTML__, and __MathML__
</section>
 

<section markdown="block">
## Displaying XML

Typically, __viewing XML in a text editor (or even your browser) results in all of the text (including the tags) being displayed__ ...

* one way to format and style the display of an XML file is to use e<strong>X</strong>tensible <strong>S</strong>tylesheet <strong>L</strong>anguage 
* XSL is a family (__XSL__ Transformation, __XML__ Path Language, etc.) of powerful languages that transform and _render_ styled and formatted __XML__
* (or even transform XML into different formats, such as regular __HTML__)

</section>


<section markdown="block">
## XML Summary

* {:.fragment} human readable, plain text format
* {:.fragment} language and platform independent
* {:.fragment} __self-describing__ (through a schema and tags) and great for nested or _tree_ like data
* {:.fragment} tags annotate text and provide structure, semantics and meta data to content
* {:.fragment} see pottery example XML file &rarr;
</section>

<section markdown="block">
## JSON

JSON: <strong>J</strong>avaScript <strong>O</strong>bject <strong>N</strong>otation 

* {:.fragment} a text-based data interchange format
* {:.fragment} it is language and platform independent; and, like XML, is also considered “self-describing”.
* {:.fragment} JSON is known for its __key-value pairs__ where __keys__ are similar to names/labels/properties, and __values__ can be numbers, text, "objects" or lists of values
* {:.fragment} for those with Python experience, this looks like a __dictionary__! (let's see some examples... &rarr;)

</section>

<section markdown="block">
## JSON Examples 

__Unlike XML, JSON does not require a predefined schema__. With that said, you'll find the JSON is still used as a common building block for other formats

* {:.fragment} ...for example: __GeoJSON__ for [geo-spatial data, such as longitude and latitude coordinates](http://geojson.org/)
* {:.fragment} other examples include
	* {:.fragment} a complete set of U.S. zip codes in JSON from [mongodb.org]( http://media.mongodb.org/zips.json?_ga=1.189730348.604843538.1465649834)
	* {:.fragment} [stats.nba.com](stats.nba.com) loads data from [json files](http://stats.nba.com/js/data/widgets/home_playoffs.json) (check out Chrome's developer tools)
	* {:.fragment} JSON is a very __common data interchange format for the web__ 

</section>

<section markdown="block">
## Unstructured Data 

* {:.fragment} the previous data we saw was __structured__: it was organized in a predefined way
* {:.fragment} scholars using literature for textual analysis often refer to their sources as __unstructured data__: 
* {:.fragment} for example Tolstoy’s War and Peace can be considered unstructured data 

</section>

<section markdown="block">
##  Unstructured Data Continued

 __What are some other unstructured datasets that you can think of?__ &rarr; <span class="fragment">(hint: [see the wikipedia](https://en.wikipedia.org/wiki/Unstructured_data))</span>

* {:.fragment} journals, health records, songs / popular music, film / tv, images, 
* {:.fragment} portions of structured data may be unstructured: body of an email, parts of a web page, or parts of a word-processor doc, a tweet, blog entry 🙃


</section>

<section markdown="block">
## Spreadsheets vs Databases

__What are factors should be considered when deciding which to use?__ 🤔 &rarr;

* {:.fragment} volume of data / number of records
	* {:.fragment} for example, the list of school districts from the US Census might be too cumbersome to handle with a spreadsheet
	* {:.fragment} very large data sets on the order of gigabytes or terabytes... even though [office  can handle them](https://support.office.com/en-us/article/data-model-specification-and-limits-19aa79f8-e6e8-45a8-9be2-b58778fd68ef); it's limited by available main memory)

</section>

<section markdown="block">
## Spreadsheets vs Databases Continued

* {:.fragment} level of __precision__ for calculations
	* {:.fragment} with spreadsheets, you're stuck with the limitations that your spreadsheet application gives you
	* {:.fragment} [for example Excel may be accurate up to 15 significant figures](https://en.wikipedia.org/wiki/Numeric_precision_in_Microsoft_Excel)
* {:.fragment} the nature of your data... __textual__, __numeric__, __images__, etc.?
	* {:.fragment} spreadsheets aren't traditionally used to store non-numeric and non-textual data (images, video, audio, etc.)


</section>

<section markdown="block">
## Spreadsheets vs Databases Continued More

* {:.fragment} __programmatic / automated manipulation of data__
	* {:.fragment} while spreadsheets provide programming facilities, they are usually not as robust as dedicated programming languages / environments
	* {:.fragment} pre-built libraries and modules for programming are usually geared towards databases rather than spreadsheets
* {:.fragment} databases also provide features for dealing with __"client" access, multiple clients, dealing with transactions, etc.__ 

</section>

<section markdown="block">
## Databases FTW?

__Hmmm. It looks like databases win. All. The. Time.__ ...

* {:.fragment} BUT... there's rather _a lot_ of  __overhead__ for:
	* {:.fragment} learning how to use a database and setting one up
* {:.fragment} more often than not, a spreadsheet will suffice for __quick__ __data analysis__ and __data visualization__ 💨📈
* {:.fragment} (and perhaps even for backing small, read-only. database driven sites)
* {:.fragment} spreadsheets are also a great tool for __prototyping__ or __testing__ out ideas 

__what are the data sets that you're working with? what's the volume of data? any issues so far?__ &rarr;
{:.fragment}

</section>

<section markdown="block">
## Storing Data

__What are some other options... let's list as many as we can.__ &rarr;

* {:.fragment} on the filesystem using one the file formats we discussed previously
* {:.fragment} _in the cloud_ (firebase, Amazon S3, SalesForce) ☁️
* {:.fragment} in a database

__Let's talk about databases!__  &rarr;
{:.fragment}
</section>

<section markdown="block">
## SO MANY DATABASES

__We can categorize databases as:__ &rarr;

* relational
* nosql (also _non-relational_)
{:.fragment}

<br>
__nosql databases can be further categorized by the data model they use:__ &rarr;
{:.fragment}

* {:.fragment} key-value
* {:.fragment} document
* {:.fragment} column
* {:.fragment} graph

</section>
<section markdown="block">
## Warning: Broad Generalizations Coming Up!

So, the following slides include high level overviews of different kinds of databases.

* I'm going to use __broad generalizations__ ⚠️
* __but there are _always_ exceptions__ 

</section>

<section markdown="block">
## Relational Databases

__Relational databases__ organize data in a collection of tables (relations). &rarr;

* {:.fragment} each table has named columns... with the actual data that populates the table in separate rows
* {:.fragment} each table row has __primary key__ that:
	* {:.fragment} uniquely identifies that row 
	* {:.fragment} allows data in one table to be _related_ to data in another (via _foreign key_ relationships)

</section>

<section markdown="block">
## Relational Databases Continued

__Regarding additional relational database features...__ &rarr;

* {:.fragment} relational databases are typically pretty rigid:
	* {:.fragment} highly structured
	* {:.fragment} columns and the types of columns must be defined before inserting rows
	* {:.fragment} has features for maintaining  _data integrity_ (user defined data constraints, foreign keys, etc.)
* {:.fragment} some relational databases guarantee that transactions (or changes in the database) are reliable (_what does that mean?_) ...

</section>

<section markdown="block">
## Aside on ACID

Reliability and [ACID compliance](https://en.wikipedia.org/wiki/ACID) - Atomicity, Consistency, Isolation, Durability

* __Atomicity__ - each _transaction_ / (series of operations in a transaction) is all or nothing 
* __Consistency__ - every _transaction_ ensures that the resulting database state is valid (goes from one valid state to another)
* __Isolation__ - a failed _transaction_ should have no effect on other transactions (even if the transactions are concurrent)
* __Durability__ - once a _transaction_ / operation is done, the results will remain persistent even through crash, power loss, etc.

</section>

<section markdown="block">
## Quick Demo: Database Design

Let's use an __[ER Diagram](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model)__ to design tables and their relationships for storing the following data: &rarr;

* {:.fragment} first name
* {:.fragment} last name
* {:.fragment} street address
* {:.fragment} city
* {:.fragment} state
* {:.fragment} zip

</section>

<section markdown="block">
## Examples of Relational Databases

__Relational databases__ can be __organized based on where they are deployed__ / run from (though there is some overlap) &rarr;

* {:.fragment} Desktop
	* {:.fragment} __FileMaker Pro__, OpenOffice/LibreOffice Base, __Microsoft Access__
* {:.fragment} Server
	* {:.fragment} __MySQL__, PostgreSQL, Oracle, Microsoft SQL Server, __SQL Lite__

Let's examine the highlighted ones in more detail. &rarr;
{:.fragment}

</section>

<section markdown="block">
## FileMaker Pro

[FileMaker Pro](www.filemaker.com) is a database server _and_ graphical user interface 

* {:.fragment} long history and successful product in many environments (cross-platform MacOS and Windows)
* {:.fragment} early desktop database to integrate multimedia, images, etc.; available for iPhone / iPad applications and one of the first to integrate with clients’ websites
* {:.fragment} anecdotally - seen used in small businesses / organizations / non-profits... for __inventory management__, __donations__, etc.
	* [current stories](http://www.filemaker.com/solutions/customers/)
* {:.fragment} although not open source, widely used in the __archival world__ (part of the Digital Humanities community)

</section>

<section markdown="block">
## Microsoft Access

* {:.fragment} great for teaching
* {:.fragment} MS-Access offers a UI (user-interface) as well as options for programming in Visual Basic and running __SQL queries__.
* {:.fragment} widely used in some industries for prototyping (building tables, sample data sets and a user interface for a product that would later run server-side.)
* {:.fragment} again, anecdotally, I've seen it used in small business for inventory management, client tracking, etc.

</section>

<section markdown="block">
## SQLite 

* {:.fragment} SQLite is the most widely installed relational database as it is used with every Android and iPhone device.
* {:.fragment} open source and widely used; commonly embedded in desktop applications / used as a prototyping tool due to ease of deployment
	* see [http://sqlite.org/famous.html](http://sqlite.org/famous.html)
	* (e.g. Adobe’s Photoshop LightRoom, Chrome to store cookie data)
* {:.fragment} can we used with many different programming languages... [see SQLite Wrappers](http://www.sqlite.org/cvstrac/wiki?p=SqliteWrappers)

</section>

<section markdown="block">
## MySQL

__Live demo...__ &rarr;

* {:.fragment} scripting in MySQL to create and populate tables, using gui
	* single table (books)
	* phpmyadmin for web interface
		* [using the public trial version](https://www.phpmyadmin.net/try/)
* {:.fragment} writing queries in MySQL to analyze data
	* use er diagram to show relationships among tables
	* artists, paintings, media and countries – MySQL demo
	* use commandline to browse

</section>

<section markdown="block">
## NoSQL Databases

__NoSQL__ databases can be categorized by how they store their data:

* key-value
* document
* column
* graph
* there are others 
	* (such as object, tuple store, etc.)
	* [check out a whole list](https://en.wikipedia.org/wiki/NoSQL#Types_and_examples_of_NoSQL_databases)
* note that nosql databases _can_ have reliable transactions as well, but this is usually not the focus of a nosql database

<br>
We'll focus on  __document stores__...

</section>

<section markdown="block">
## Document Stores

As you might guess by the name, __document stores__ organize data semi-structured documents. 

* think JSON (but there are many possible formats, such as XML, YAML, etc.)
* or... a _richer_ key-value store (there's _meta data_ within the document... the keys are usually meaningful)
* typically, no schema is required (that is, data types of values are inferred from values)
* typically, semi structured (documents, property names, etc... do not have to be pre-defined)
* some document stores are particularly featureful when it comes to high availability and scaling (through replication/redundancy and sharding/separating large databases into smaller ones)

<br>
They're particularly good for applications where flexible data storage or constantly changing data storage is required.
</section>

<section markdown="block">
## Document Store Examples

Two of the most popular __NoSQL__ databases are:

* {:.fragment} __MongoDB__
* {:.fragment} __CouchDB__

There are a [bunch of others](https://en.wikipedia.org/wiki/Document-oriented_database#Implementations)
{:.fragment}

Some use cases for document stores include:
{:.fragment}

* {:.fragment} applications that require semi structured data / __data that has does not have rigid requirements__ (perhaps a resume)
* {:.fragment} again, large volumes of data
* {:.fragment} _fluid_ data or data whose structure is prone to change


</section>

<section markdown="block">
## MongoDB

It's a nosql database, specifically, a document store...

* a single __record__ in Mongo is a __document__ 
* a document is a bunch of key value pairs... 
* hey... __that sounds like...__ &rarr; 
* {:.fragment} documents are similar to JSON objects 
</section>

<section markdown="block">
## Documents and Collections

A couple of terms to remember (yay, definitions)

* __key__ - a field name - analogous to a column in a relational database
* __value__ - a value 🤔
* __document__ - a single object or record in our database, 
	* consists of key value pairs
	* similar to a single row in a relational database
* __collection__ - a group of documents 
	* analogous to tables in relational databases
</section>

<section markdown="block">
## MongoDB Demo

Let's checkout some zipcode data and mongodb! &rarr;

* {:.fragment} importing data
* {:.fragment} inserting data
* {:.fragment} retrieving data

</section>

<section markdown="block">
## Questions?

Please reach out to me if you have any __questions__ regarding how work with your data from a technical standpoint:

1. {:.fragment} where should it be stored
2. {:.fragment} what tools can be used to work with it
3. {:.fragment} help with cleaning and importing data

</section>
