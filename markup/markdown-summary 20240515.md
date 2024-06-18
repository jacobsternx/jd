--- 
Markdown Guide
https://www.markdownguide.org/basic-syntax/

Basic Syntax
# H1 Heading 1
## H2 Heading 2
### H3 Heading 3
*Italic* 
**Bold** 
***Bold Italic*** 
Note: _Single_, __double__, ___triple___ underscore has same effect.
==highlighted text==
~~Strikethrough~~ 
H~2~O subscript Subscript
X^2^ superscript Superscript
[Link Text](https://www.example.com) "title attribute"
Note: Optionally, a tooltip can be added to a hyperlink with quotation marks when mouse hovering.
Note: Alternatively, links can be placed as references [Hyperlink][1] to make surrounding text easier for devs to read and maintain, which requires a trailing CR.
(looks same to public)
[1]:<https://www.example.com>

Note: CR surrounds
> Blockquote, > must be first character of line, to end of line, 
> 
> For multiple paragraphs, add a > on lines between paragraphs. 
>> Nested Blockquotes begin with >>
>> - List Elements also work with Blockquotes
>> *Italics*, **Bold**, and some other formatting also works -- test!

To denote a `word or phrase` as code, enclose it in backticks (`).

If ``Jacob`s word or  phrase`` you want to denote as code includes one or more backticks," you can escape it by enclosing the word or phrase in double backticks (``; I'm only seeing this work if I double-backtick the whole phrase). 
Note: CR surrounds

``` code block ``` Code Block 
Note: CR surrounds
Note: Outside of code block, valid HTML \<p> must be escaped with backslash to be visible, as do lines beginning with \# 

Note: GitHub does not honor CSS color in readme.md files

Images
![Image Text](https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg)

Definition List
First line is term (bolded), second line beginnging with colon is definition (indented)

Ordered List
1. First item
234. Second item
567890. Third item
Note: List numbers consecutively ordered if first is 1; CR surrounds

Unordered List
- First item
* Second item
+ Third item
Note: Repeat symbol for tight line spacing; -, *, or +
Note: To add a paragraph beneath a list item, indent 4 spaces or one tab.
Note: You can nest an unordered list in an ordered list, or vice versa.

Tables
Use three or more dashes (---) to create each column’s header, and use pipes (|) on both ends of row and to separate columns.
To align text in the columns to the left, right, or center, add a colon (\:) to the left, right, or on both side of the hyphens.

| Syntax      | Description | Test Text   |
| :---        | :----:      | ---:        |
| Header      | Title       | Here's this |
| Paragraph   | Text        | ... more    |

Horizontal Rule
3 asterisks or undsercores alone (*** or ___)
Note: CR surrounds
*** 

Section Separator
Note: CR surrounds
3 dashes alone (---)
#--- (commented out)
