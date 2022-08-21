assistant_professor(damla, oguz, 45). %(name, surname, citation number)
assistant_professor(serap, sahin, 44).
assistant_professor(isil, oz, 46).
lesson(ceng212, 2, 3, programmingParadigms). %(id, years, credit, name)
lesson(ceng435, 4, 3, advancedInfoManagement).
lesson(ceng322, 3, 3, os).
lesson(ceng416, 4, 3, seniorDesignProject).
lesson(ceng444, 4, 4, parallelProgramming).
lesson(ceng590, 4, 4, seminar).
teachs(damla, ceng212). %(name, class code)
teachs(damla, ceng435).
teachs(serap, ceng322).
teachs(serap, ceng416).
teachs(isil, ceng416).
teachs(isil, ceng444).
teachs(isil, ceng590).
assistant_of(huseyin, ceng212).
assistant_of(altug, ceng435).
assistant_of(dilek, ceng322).
assistant_of(guliz, ceng416).
assistant_of(emre, ceng444).
assistant_of(cansu, ceng590).
grade(260201018, ceng212, aa).
grade(260201018, ceng322, aa).
grade(260201018, ceng416, ba).
grade(230201040, ceng212, aa).
grade(230201040, ceng322, bb).
student(ayaz, 270201001, 2). %(student name, id, year of class)
student(pelinsu, 230201040, 4).
student(ece, 280201009, 1).
student(atalay, 260201018, 3).


faculty_members(X, Y):-
    assistant_professor(X, Y, _).

teach_course(X, Y, Z):-
    faculty_members(X, Y),
    lesson(Z, _, _, _),
    teachs(X, Z).

access_results(X, Z):-
    give_grades(X, _),
    teachs(X, Z).

is_available(CourseName):-
    lesson(Course, _, _, CourseName),
    teachs(_, Course).

give_grades(X, C):-
    (lesson(C, _, _, _),
    assistant_of(X, C),
    read_homeworks(X, _, C)); (faculty_members(X, _),
    read_exams(X, _, C)).


read_homeworks(Assistant, StudentId, C):-
    lesson(C, Y, _, _),
    assistant_of(Assistant, C),
    student(_, StudentId, Y).

read_exams(X, StudentId, C):-
    lesson(C, Y, _, _),
    teachs(X, C),
    student(_, StudentId, Y).

is_relative(Assistant, Prof):-
    assistant_of(Assistant, X),
    assistant_professor(Prof, _, _),
    teachs(Prof, X).

is_bigger(X, Y):-
    X > Y.

has_more_cite(Prof1, Prof2):-
    assistant_professor(Prof1, _, Cite_num_1),
    assistant_professor(Prof2, _, Cite_num_2),
    is_bigger(Cite_num_1, Cite_num_2).

is_student_took_course(StudentId, Class):-
    lesson(Class, X, _, _),
    student(_, StudentId, Z),
    (X =< Z).

passed_with(StudentId, ClassName):-
    lesson(Class, X, _, ClassName),
    student(Student, StudentId, Z),
    (X =< Z),
    grade(StudentId, Class, Y),
    write('The grade that '),
    write(Student),
    write(' passed is '),
    write(Y).



