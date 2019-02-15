# Cuny 
<%= render 'layouts/header' %>

 <!<% elsif current_page? (edit_tutor_path(@tutor))%>
    <%= render 'tutors/headertutors' %>




 



  <% if current_page? (tutors_path)%>
    <%= render 'tutors/headertutors' %>
  <% elsif current_page? (search_tutors_path)%>
    <%= render 'tutors/headertutors' %>
  <% elsif current_page? (new_tutor_path)%>
    <%= render 'tutors/headertutors' %>
  <% elsif current_page? (tutors_home_path)%>
    <%= render 'tutors/headertutors' %>


  <% elsif current_page? (edit_tutor_path(@tutor))%>
    <%= render 'tutors/headertutors' %>
  <% elsif current_page? (tutor_path(@tutor))%>
    <%= render 'tutors/headertutors' %>




<% elsif current_page? (housings_path) %>
  <%= render 'housings/headerhousings' %>
<% elsif current_page? (electronics_computers_path) %>
  <%= render 'electronics_computers/headerelectronics' %>
<% elsif current_page? (vehicules_path) %>
  <%= render 'vehicules/headervehicules' %>
<% elsif current_page? (other_articles_path) %>
  <%= render 'other_articles/headerother' %>
<% else %>
    <%= render 'layouts/header' %>
<% end %>


---------------new test below wed 02/13/19
  <% if current_page?(tutors_path) || current_page?(search_tutors_path) || current_page?(new_tutor_path) || current_page?(tutors_home_path) %>
    <%= render 'tutors/headertutors' %>

 

  <% elsif current_page?(controller: 'tutors')%>
    <%= render 'tutors/headertutors' %>




<% elsif current_page? (housings_path) %>
  <%= render 'housings/headerhousings' %>
<% elsif current_page? (electronics_computers_path) %>
  <%= render 'electronics_computers/headerelectronics' %>
<% elsif current_page? (vehicules_path) %>
  <%= render 'vehicules/headervehicules' %>
<% elsif current_page? (other_articles_path) %>
  <%= render 'other_articles/headerother' %>
<% else %>
    <%= render 'layouts/header' %>
<% end %>



<% if current_page?(controller:'tutors') &&
 (current_page?(action:'index') ||
  current_page?(action:'new')   ||
  current_page?(action:'edit')) %>
<%= render 'tutors/headertutors' %>

<% end %>






 --------------------------------------------------------------------------------------------------   

https://myaccount.google.com/lesssecureapps (allowing less secure email with gmail)




-finir chat box (remaining to improve design, notification sound, and notification for book buyer, but moving on for now)   OK


-other item, articles (add description to book)
-university create by admin only, seed (list of university, group student by university, student can more one university, student belong to university)
-list of all university and community colleges seed
-ablity for the ask to add his university if not there
-student receive email api
-facebook aouth
-email sent in sign up (need to look good, not plain text)
-change to Sendgrid
-push online--------------------------
-send email to hunter student
-We don't guarantee the accuraticy of information that users posted... (do your own research!)
-Legal issues
-housing for sale or rent(add to database and separate in views)
-meet people your school or public space 

- student can create page and other students can follow
-student create group other student can subscribe

-Intership
-Job offer
-help myprofessor

- contact us if you don't your university or any problem 
-if books not available : do not show it on sale part (archived)

- send message to student in facebook  all selling group, cuny startup

- make search space big, more design, more visible, write in the space holder

- looking for book people, send email to them if book become available
- reviews, who can review tutors, book seller (https://www.youtube.com/watch?v=0DR5JLZ2Qgg&index=3&list=WL&t=0s)

- start writing test
-cache memory cleaning
------------------------------------------monday 01/14/2019------------

-severe problem with chatbox (je dois me recycler en jascripcript, codecademy.com)
 -design
 -notification sound and email for the first messages
 -allow rating if seller and buyer communicate once
 - don't show name of seller
 -not receiving book id (for chat for book)