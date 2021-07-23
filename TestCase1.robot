*** Settings  ***

Resource        resources.robot

*** Test Cases *** 

Scenario 1
Open Browser on "www.google.com"
Search for "Amazon Brasil" and Search
Navigate to "www.amazon.com.br" Through The Search Page

Scenario 2
80% Of Shown Products Should Be Exclusively The Searched Product
Search For "Iphone" Using The Search Bar
Count The Total List Of Found Products
Count The Total Of "Iphone" Items Found
Make Sure At Least "80"% Of Items Found are "Iphone"

Scenario 3
The Higher Price In The First Page Can't Be Greater Than U$2000
Search For "Iphone" Using The Search Bar
Find The The More Expensive "Iphone" In Page
Convert Its Value To USD Using https://exchangeratesapi.io/ API
Make Sure The Converted Value Is Not Greater Than US"2000"

Scenario 4
Products Different Than The Searched Product Should Be Cheaper Than The
Searched Product
Search For "Iphone" Using The Search Bar
Find Products Which Are Not "Iphone"
Make Sure All Found Products Are Cheaper Than The Cheapest "Iphone"