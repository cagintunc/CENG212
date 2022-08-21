?- is_available(parallelProgramming).

?- is_relative(guliz, serap).

?- read_homeworks(dilek, 260201018, ceng322).

?- give_grades(altug, X), give_grades(damla, X).

?- student(ayaz, X, _), read_exams(damla, X, ceng212).

?- student(atalay, X, _), passed_with(X, Y).

?- has_more_cite(damla, serap).

?- has_more_cite(X, serap), teachs(X, Y), student(pelinsu, W, _), read_exams(X, W, Y).

?- has_more_cite(X, serap), teachs(X, ceng435), student(pelinsu, W, _), read_exams(X, W, ceng435).

?- access_results(damla, ceng212).
 
?- give_grades(altug, ceng435).

?- give_grades(X, ceng212), teachs(X, ceng212).

?- give_grades(X, ceng212), (teachs(X, ceng212);(assistant_of(X, ceng212))).

?- teachs(isil, ceng444).

?- grade(260201018, ceng322, aa).