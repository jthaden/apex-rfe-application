
# APEX Request-For-Exception Application
CS347 Data Management final project, in which we created a "Request For Exception" database in Oracle SQL and corresponding web application in Oracle Application Express. Web application allows for the creation of RFEs and facilitates their traversal up the chain of approval. Administrators can perform various administrative actions and approve, reject, or return RFEs at their administrative level. SQL backend logic handles comment, status, and date info as users interact with requests.

Link to web application: https://apex.oracle.com/pls/apex/f?p=59772:2:16640759017517::NO:::
Notes about using web application: Select "Log In" on the left navigation pane and log in as one of the sample users (NOTE: Authentication was not a part of the project and was to be handled on ARL's end, so you can currently log in as any of the sample users). You'll be taken to the "My RFE's" page. From here, you'll see all the RFEs that have been submitted by this user. Also from this page, you can create a new RFE, edit an existing RFE, recall an RFE, or submit a new RFE for approval using the buttons at the top right. You can view detailed user/employee information in the "User Info" page. Finally, if the user is an admin, they may travel to "Admin Tools" to view all RFEs that have been submitted and perform admin operations on them, such as approval, returning to requestor, and rejection.

All three models can be viewed. Samples of much of the SQL logic used in the web application can be found in sample_logic.sql, and the sample data currently loaded into the web application database can be viewed in the data folder.

