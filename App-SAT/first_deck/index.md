---
title       : App-SAT
subtitle    : Learning about national educational issues by exploring SAT scores.
author      : by DataFalcon Industries
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- bg:#FFFACD

## U.S. High School Education could be better

Can we learn from SAT scores?
More generally, can we educate voters on complex, data-driven issues?

1. The United States lags behind other industrialized nations in secondary education.
2. Differences in large population means of educational attainment must have underlying causes.
3. Local solutions, such as charter schools, don't address the fundamental problem
    + Success is often just a matter of exclusivity
    + No local system has found an answer scalable to a state or a country
    + Any conjectured local solution would be expensive to scale
    

--- .class #id bg:#EEFFEE

## Data Exists that Could Shed Light on Answers

1. Individual states have widely differing approaches to education
2. A common, though imperfect, standardized measure exists... the SAT

### Can We Learn from SAT Scores? or...
### Has one of our United States solved the high school education problem? 

```
##        state expend ratio salary perc verbal math total
## 1    Alabama  4.405  17.2 31.144    8    491  538  1029
## 2     Alaska  8.963  17.6 47.951   47    445  489   934
## 3    Arizona  4.778  19.3 32.175   27    448  496   944
## 4   Arkansas  4.459  17.1 28.934    6    482  523  1005
## 5 California  4.992  24.0 41.078   45    417  485   902
```

```
## [1] "Maximum State SAT score" "1107"
```

```
## [1] "Minimum State SAT score" "844"
```

--- .class #id bg:#C0C0C0

## APP-SAT - A web based utility to explore SAT data...
## and answer these questions for yourself.
<div style='text-align: center;'>
    <img height='480' src='ScreenShot.png' />
</div>


--- .class #id bg:#FFFFEE

## Simple Analysis Produces Erroneous Conclusions

1. SAT scores do not appear correlated to expected inputs
    + Insensitive to teacher salary, class size and spending per pupil
    + Relativley "poor" states appear to have better outcomes
2. Cursory analysis shows that North Dakota appears to be successful
    + A closer look shows that self-selection bias might be at the root of high SAT scores
    + The only measure with strong correlation is percentage of students taking the test
3. We believe that interactive data will better educate voters
    + Issues are complex but web-based tools can make them intuitive
    + Future product enhancements are coming soon
    
## App-SAT is just the beginning... 
