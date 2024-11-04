% 1. Cr�er une t�che
create_task(ID, Description, Assignee) :-
    assertz(task(ID, Description, Assignee, false)),
    write('Task created: '), write(ID), nl.

% 2. Assigner une t�che � un utilisateur
assign_task(ID, NewAssignee) :-
    retract(task(ID, Description, _, Status)),
    assertz(task(ID, Description, NewAssignee, Status)),
    write('Task '), write(ID), write(' assigned to user: '), write(NewAssignee), nl.

% 3. Marquer une t�che comme termin�e
mark_completed(ID) :-
    retract(task(ID, Description, Assignee, _)),
    assertz(task(ID, Description, Assignee, true)),
    write('Task '), write(ID), write(' marked as completed.'), nl.

% 4. Afficher toutes les t�ches avec leurs d�tails
display_tasks :-
    task(ID, Description, Assignee, Status),
    write('Task '), write(ID), write(': '), nl,
    write('- Description: '), write(Description), nl,
    write('- Assignee: '), write(Assignee), nl,
    write('- Completion status: '), write(Status), nl.







