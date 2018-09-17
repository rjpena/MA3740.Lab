data chem101;
infile '/home/campus21/kendall/Desktop/sas desktop/chem101.txt' firstobs=2;
input class$ time$ review$ hw midterm final;
percent=25*(hw/550)+35*(midterm/100)+40*(final/100);
if (percent >= 90) then coursegrade="A"; else 
if (percent >= 80) then coursegrade="B"; else
if (percent >= 70) then coursegrade="C"; else
if (percent >= 60) then coursegrade="D"; else
coursegrade="F";
proc print data=chem101;
run;
