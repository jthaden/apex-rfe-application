Insert into F15A7StatCode (status_code, description, RFE_status)

values (1, 'Entered', 'The RFE has been created but has not yet been submitted for approval.');
values (2, 'Submitted', 'The RFE has been submitted to the Lab System Administrator for approval.');
values (3, 'Returned', 'The RFE has been returned for further information or clarification. Once Submitted again, it will follow the same routing as an Entered RFE.');
values (4, 'Recalled', 'The requestor has recalled an RFE that has not yet reached final approval. Once Submitted again, it will follow the same routing as an Entered RFE.');
values (5, 'Rejected', 'The RFE has been rejected and cannot be implemented.');
values (6, 'SA Approved', 'The Lab System Administrator has approved the RFE; it has been submitted for Lab Director approval.');
values (7, 'LD Approval', 'The Lab Director has approved the RFE; it has been submitted for Network Security Panel approval.');
values (8, 'CH Approval', 'The Lab Director has approved the RFE; it has been submitted to the Chairperson of Security Panel approval.');
values (9, 'Final Approved', 'The Executive Director\'s Office has given final approval for the RFE and it may be implemented.');
