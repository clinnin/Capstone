---
title       : Predictive Text Application
subtitle    : Coursera Data Science Capstone Project
author      : A Clinnin
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## Locating the Application

- The production application is available at https://aclinnin.shinyapps.io/Final/

- For more information on development, all code is available on GitHub at https://github.com/clinnin/Capstone

---

## Application Instructions and Source

- This program was designed for speed and simplicity: all that is necessary to use the application is to type text into the input box, click submit, and the predicted next word will populate to the right. 

- This application uses a pre-processed sample of text gathered from news articles, blogs, and social media to develop a recent, relevant understanding of natural language in English (US) text. 
- This body of text was cleaned for profanity, special characters, excess whitespace, and stopwords to limit it to the most useful language components.

---

## Process and Algorithm

- This application takes a minimalist approach to the prediction algorithm in order to maximize speed. The input string is cleaned up (removing profanity, stopwords, special characters, numbers, whitespace, and leading and trailing spaces) and compared to the corpus generated from the n-gram processing performed in the development of this application. The word with the highest frequency to follow the n-gram submitted is returned as the predicted word.

- A series of modeling techniques was applied in the development, chiefly Katz's Back-Off Model (http://en.wikipedia.org/wiki/Katz%27s_back-off_model). However, the efficiency lost in the application of this and other techniques took away from the main goals of the application: portability and speed.



---

## Extensions

- Development versions of this application made use of more advanced modeling techniques and a larger collection of reference n-grams. These led to the highly desirable outcomes of greater accuracy and longer n-gram lengths. If speed and portability were not the primary goals of this application, a slower but more precise version of this application should be implemented in a future release.

- Further, it would be helpful to return more than one predicted word to allow a range of options to the user. It is solely the "single word returned" evaluation criteria of this project that limited the outcome to a single word returned.
