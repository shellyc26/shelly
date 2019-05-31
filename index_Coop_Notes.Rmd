---
title: "Notes from Chapter 1"
output:
  html_document:
    df_print: paged
---

## The big things:

- I noticed a lot of the formatting was inconsistent, and I think it would be best to get on the same page about it before I commit any other changes (that way, I can look for the inconsistencies and fix them!).

    - My intuition is to have everything that is in-line code be formatted with the backticks (ex: `gss.2016`). I realize this becomes a lot of in-line code, but I personally think it’s easier to read.
    - I made a lot of those changes to the formatting in this version, although I was also inconsistent.  I wanted to leave some of the other styles there so you can see how it compares and figure out which you like best. I think around line 409 is where I started really going to town with the formatting – so see what you like or don’t like.
    - I would probably do in-line code for functions, arguments, any type of object, columns (like `grass` and `age` in the `gss.2016` data frame), unformatted output (ex: `states + 2` is `4`), and reserved words like `NA`/`NULL`/`TRUE`/`FALSE`. I probably wouldn’t do it for the values of an individual observation, although I can see both sides. The exception is when something is first introduced, I like the idea of keeping it bold. However, you can make in-line code boldface **`this`**, so you can still keep it consistent. Whatever you decide, just let me know what to do so I can make sure everything is consistent all the way through. 
    
-	There’s a slight issue with the code for `gss.2016`, specifically in code chunk **c1main35**. When you force age to be as.numeric, an error occurs saying “NA’s introduced by coercion” or something similar. Anyone that is 89 or older is coded as “89 OR OLDER”, so when you force the age variable to be numeric, it doesn’t know what to do with “89 OR OLDER”, and turns it into a `NA` (run the code and then check out row 284 for an example). This interferes with some of the other code later on. I would suggest either recoding “89 OR OLDER” to 89 or 100 or some large number or completely removing cases that contain “89 OR OLDER”. The problem is you’d want to do either of these things before you continue, even if you haven’t talked about them yet. I did *not* change anything in the code because I wanted to talk to you about the best way to handle it. Let me know what you want to do, and then I’ll go ahead and fix it. 

## The smaller things:

-	I didn’t realize that the chunk wasn’t going to be echoed, but I gave 2 other options for **c1intro1** instead of using nested `ifelse` functions, which is not typically recommended. One is the old school `if/else if/else` way and the other is via only using `dplyr` functions. 

-	Line 206: I removed the object-oriented programming bit. Although it’s true that R is an OO language, I believe that it is more intense than just working on objects. I think it’s something like you create your own object class and functions specifically for it (kind of like how tidyverse has tibbles). Since this is an intro book, I can’t imagine getting into the nitty gritty of OO programming, so I’d suggest just leaving it out. 

-	Currently vectors are described as being the same type (numeric, character etc). But you can definitely have a mixed vector like `c(6, “hello”, TRUE)`. However, R will turn this into the least specific type. Here, that means a character vector since TRUE could be interpreted as “true” and 6 could be “six”, but “hello” can never be a number. Do you want to talk about this at all? I didn’t include it, but could if you’d like. I’m not sure how necessary it is?
