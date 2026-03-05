clc
clear
roll()
function x = roll()
    switch_1 = 1;
    while switch_1 == 1
        n = input("How to dice do you want to roll : ");
        rand_num = randi(9,n);
        %disp(rand_num);
        A = []; 
        lenArr = length(rand_num);
        %disp(lenArr)
        for i = 1:n
            pause(1);
            disp("Dice " + i + " : " + rand_num(i))
        end
    
        usr_opt = input("Do you want to roll again? (0 = NO , 1 = YES) : ");
        if usr_opt == 1
            pause(1);9
            roll();
        elseif usr_opt == 0
       
            break;
        end
    end
end