startexplore():-
    function1()
   ,function2(),
   function3(),
   function4(),
   function5()
   .

function1():-
     testfunction("Do you see an obstacle","Change Direction")
.
function2():-
   testfunction("Do you carry samples and at the base","Drop smaples")
    .
function3():-

testfunction( "Carrying samples and not at the base","Travel up gradient")
.
function4():-
        testfunction("detect a sample","pick sample up").
function5():-
    write("move randomly"),nl,startexplore().
testfunction(Text1,Text2):-
    write(Text1),nl,
    read(Reply),nl,
    (   (Reply == y; Reply == yes)->( write(Text2), nl,startexplore());true
).
