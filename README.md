Bus timetable
This exercise is similar to the train exercise we did previously, but we'll re-do it in Rails now. Here are some user stories to start out with:

As a bus system operator, I want to add bus stations, so that I can show where all of the buses will go.
As a bus system operator, I want to add bus lines, so that I can track which lines go to which stations.
As a bus rider, I want to view a bus line, so that I can see the stations where it stops.
As a bus rider, I want to view a bus station, so that I can see which buses come to it.
For now, just pretend that this app is user-editable: don't try to create separate pages for operators and riders, but instead just let anybody update the site.

There's a many-to-many relationship between stations and lines. I'd suggest calling your join table stops.

To start off, create separate pages for the CRUD/L actions for stations, lines, and stops. When you create or update a stop, provide a drop-down menu to choose the line and station for that stop. Your drop-down code will look something like this:

<%= f.collection_select :station_id, Station.all, :id, :name %>
The first argument is the name of the attribute the drop-down sets (station_id), the second is the elements from which the drop-down list is created (Station.all), the third is the attribute of the elements that should be sent by the form to the server (the id of the selected station gets set to the station_id of the stop), and the last is the text to display on the screen (we want the user to choose the name Grand Central from the drop-down, not the id 5).

If you get through these first stories, here are a few more for you:

As a bus system operator, I want to add buses to a line, so that I can assign each physical bus to a particular line.
As a bus systems operator, I want to note what time a bus is scheduled to arrive at each stop, so that I can tell my drivers when they should be where.
As a bus rider, I want to view a bus line and see all of the buses that run on it and what time they arrive at each stop, so that I can pick one that fits my schedule.
As a bus rider, I want a visual representation of the bus system, so that I can more easily see which lines go where. Hint: Check out D3.js; don't overlook the d3-rails gem.
Previous lesson
Next lesson
Section contents
Table of contents
© 2014 Epicodus, Inc.
