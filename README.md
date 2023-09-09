CUNYversity: Cunyversity is a marketplace that allows student to exchange goods and services safely.

Moto: Everything a student needs...!


Day:7 (update when finish)

-----------------------------------------
vim ~/.bashrc
vim ~/.bash_profile
psql -U deploy -W -h 127.0.0.1 -d cuny_production

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
 

--------------------------------------------------

# Cuny 

git add -A && git commit

git push origin seeding_university_vers1.8

cunyversity1@hotmail.com : pass: rightn....


1and1 email : supports@cunyversity.com : Abou.......1!

https://myaccount.google.com/lesssecureapps (allowing less secure email with gmail)
 
  
 --------------------------To Do list - most important in the top---------------------------------------------------------   

I) MVP********************


-an student can only create if university doesn't exist in already
  an Admin can create, modify , delete, CRUD


@@@@@@@@@@@@@@@@@
-show item belonging to an university only
-verify student email before a student join an university

-make every student belong to public university (NO NEED, to fill every student database with same data)
-If you don't belong to a university you can't post there
-make admin join every university (will creating and updating)


-verify student email before a student join an university
-show item belonging to an university only

-create complete design on paper (the final look)
-finir chat box (remaining to improve design, notification sound, and 
 notification for book buyer, but moving on for now)   OK

(fix 2 models, controller, then views)
-admin can create universties & modifies it, create post visible by everyone (Ads), send message to anyone
-paginate problem
-housing, electronics, etc.... attributes in view design need to be finish




-other item, articles (add description to book)
-facebook aouth
-university create by admin only, seed (list of university, group student by university, student can more one university, student belong to university)
-list of all university and community colleges seed
-ablity for the ask to add his university if not there
-student receive email api

-email sent in sign up (need to look good, not plain text)
-change to Sendgrid




-housing for sale or rent(add to database and separate in views), create databae sell or rent

-if books not available : do not show it on sale part (archived)

-meet people your school or public space 

-populated website, database
-google ads to make some money

-We don't guarantee the accuraticy of information that users posted... (do your own research!)
-Legal issues
-send email to hunter student
- make search space big, more design, more visible, write in the space holder
-email: notification sound and email for the first messages

-push online-----


MVP*****end**************

II)------------------Improvement after MVP----------------------------------

- add location(google api), student can get recommendation for local business around...
- student can create page and other students can follow
-student create group other student can subscribe

- looking for book people, send email to them if book become available
- reviews, who can review tutors, book seller (https://www.youtube.com/watch?v=0DR5JLZ2Qgg&index=3&list=WL&t=0s)


-account deleting refuse (because the picture it own are not been delete with it)
-severe problem with chatbox (je dois me recycler en jascripcript, codecademy.com)
 -design
 
 -allow rating if seller and buyer communicate once
 - don't show name of seller
 -not receiving book id (for chat for book)


-------------------------university database schema-----------------------------------------------------------


many to many relationship

every student below to Global University

-university:
-id
-name
-website
-domain: edu (primary key)
-photo

an student can only create if university doesn't exist in already
an Admin can create, modify , delete, CRUD



@@@@@@@@@@@@@@@@@
-show item belonging to an university only
-verify student email before a student join an university

-make every student belong to public university (NO NEED, to fill every student database with same data)
-If you don't belong to a university you can't post there
-make admin join every university (will creating and updating)



-verify student email before a student join an university
-show item belonging to an university only

http://leah-eventhop.herokuapp.com/places/4/events/new?continue=%2Fplaces%2F4%2Fevents%2Fnew




https://translate.google.com/?sl=en&tl=fr&text=%3C%25%20universities_array%20%3D%20University.all.map%20%7B%20%7Cuniversity%7C%20%5Buniversity.name%2C%20university.id%5D%20%7D%20%25%3E%0A%0A%20%3C%25%20universities_array%20%3D%20JoinUniversitiesStudent.all.map%20%7B%20%7Cstudent%7C%20%5Bstudent.university.name%5D%20%7D%20%25%3E%0A%0A%0A%20%20%20%20%20%20%20%20%3C%25%20universities_array%20%3D%20JoinUniversitiesStudent.all.map%20%7B%20%7Cstudent%7C%20%5Bstudent.university.name%2C%20current_student.id%5D%20%7D%20%25%3E%0A%0A%3C%25%20universities_array%20%3D%20%0A%20%20%20%20%20%20%20%20JoinUniversitiesStudent.where(%40student%20%3D%3Dcurrent_student.id).map%20%7B%20%7Cstudent%7C%20%5Bstudent.university.name%5D%20%7D%20%25%3E%0A0--------------------------%0A%0A%20%3C%25%20universities_array%20%3D%20%0A%20%20%20%20%20%20%20%20%20%20%20%20JoinUniversitiesStudent.all.map%20%7B%20%7Cstudent%7C%20%5Bstudent.university.name%2C%20current_student.id%5D%20%7D%20%25%3E%0A&op=translate

 <% universities_array = 
JoinUniversitiesStudent.all.map { |student| [student.university.name, current_student.id] } %>

 <% universities_array = JoinUniversitiesStudent.all.map { |student| [student.university.name] } %>
<%= f.select(:university_id, options_for_select(universities_array), { include_blank: true }) %>







 -------------------------------------todo list 11/21/22----------------------------------------
- one single place to create articles, have categeries (house, electronics,.....) as option
-admin can delete all articles, universities, ....
-electronics missing description and seller email
-(all tutors sidebar not working)
- simplify articles information need to create





-------------------Potential Problems------------------------------------

-help myprofessor
- contact us if you don't your university or any problem 




- start writing test
-cache memory cleaning


---------------------------Adversitment----------------------------

- send message to student in facebook  all selling group, cuny startup



II)-------------------------------------------------------
-In apps builds, porfolio profitership
-Job offer
-3 to 5 bigle (and couple static webpages)


III)------------Design--Idea general sur le design actuel-----------------------------------------
cunyversity: 
-manque de modernité
- excessivement simple
-not good use of color ()
-



------------------------------------------monday 01/14/2019------------

---------good links to check-----------------------------------------------------------------------
https://www.programmableweb.com/news/10-top-apis-rentals/brief/2020/08/02
https://api.collegeai.com/v1/docs/user-interface/college-list
https://www.ucribs.com/about-us/
https://github.com/endSly/world-universities-csv/blob/master/world-universities.csv
https://github.com/flyeven/universities

https://www.youtube.com/watch?v=Qur-Pdep4zg (many to many videos)


https://dev.to/neshaz/join-table-in-rails-23b5


------------------------------python code to split email------------------------------------------------------

website = 'aboubacar.toure36@myhunter.cuny.edu'
email = 'https://hunter.cuny.edu/'

alphabet = 'abcdefghijklmnopqrstuvwxyz.@'

newb =''
for letter in email:
    if letter in alphabet:
        newb +=letter

#print(newb)        

x = newb.split(".")

print(x)

final = x[-2]+'.'+ x[-1]

print(final)


------------------final split-------------
emailList =[]
with open('emailList.txt') as Book:
    for line in Book:
        emailList.append(line.split(','))

finalList =[]
for a in emailList:
    finalList.append(a[2])

def cleanedup(s):
    alphabet = 'abcdefghijklmnopqrstuvwxyz.@,-0123456789'
    cleantext = ''
    for character in s.lower():
        if character in alphabet:
            cleantext += character
        else:
            cleantext += ' '
    return cleantext

bestList =[]
for a in finalList:
    bestList.append(cleanedup(a))

print(len(bestList)) #print

for x in bestList:
    print(x)

f = open("eduData.txt", "w")
content = str(bestList)
f.write(content)
f.close()


-------------------------------

<% if current_student[:admin] != true %>
    <% if student_signed_in? && current_student.id != @university.student_id %>  <!-- good one here -->

               <%= link_to "Send Message to university administration", "#", class: "btn btn-success btn-xs start-conversation",
                                  "data-sid" => current_student.id, "data-rip" =>  @university.student_id %>
                                                <!-- TO FIX:this not sending message to admin  -->
          
              <%= link_to "Click to Join this university", 
              join_student_university_path(current_student.id, @university.id), method: "post" %>

    <% end -%>
<% end -%>




