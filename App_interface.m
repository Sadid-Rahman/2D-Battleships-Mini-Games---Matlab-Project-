% Application Interface
clear
clc
z = input("Enter your first name:","s");
%disp(z(1));
if length(z) <= 8
    program_interface(z);
else
    while length(z) > 8
        z = input("Enter your first name:","s");
        if length(z) <= 8
            program_interface(z);
        end
    end
end

function x = program_interface(name)
    B= [];
    for r = 1:13
       A = [];
       for c = 1:16
           x = ' * ';
           A = [A x];
           
       end
       B = [B;A];
    end
    
    %disp(B);
    [row col] = size(B);
    for r2 = 2:row-1
        for c2 = 3:col-2
            B(r2,c2) = " ";

        end
    end
    spaces = "    ";
    spaces2 = "                          ";
    %name = "sadid";
    x = length(name);
   
    str = char(" Welcome, "+ name +" [Select a function:(0-9)]" +"    "+ "0) Exit" + spaces2 + "           " +"1) Summation" + spaces2 + "      "+"2) Straight line equation" + spaces + "               " + "3) Guess the name of the country "+ spaces + "       " + "4) Guess the flag of the country" + spaces + "        " + "5) Quadratic equation graph"+ spaces + "             " +"6) Battleships"+ spaces2 + "    " + "7) Rock Paper Scissors   " + spaces + "               " + "8) Shapes "+ spaces2 + "        " + "9) Roll a dice"+ spaces2 );
    
    %str = char(" Welcome, User [Select a function: (0-9)]");
    %opt1 = char("0) Exit");
    x = length(str);
    
    index1 = 1;
    
    for r3 = 2:row-1
        
        for c3 = 3:col-2
            if index1 <= x
               B(r3,c3) = str(index1);             
               index1 = index1 + 1;
            end
        end
    end
    disp(B);
end