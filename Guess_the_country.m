function x = guess_the_country()
%Title
disp("Guess the name of the country!")
% The Database / The word set

words = ["America","Bangladesh","Australia","Brunei","Malaisia","China","Vietnam","United Kingdom","Japan","Saudi Arabia","Argentina","Brazil","Spain","Germany","Pakistan"];
% The randomiser
random = randi(14);

% Storing the random word into a character vector 
A = char(upper(words(random)));

%Empty vector to store each character of a word
B = [];

%Empty vector for hiding and revealing character of the word 
% (if the user get it right)
C = [];

%The length of character in a word
lenArr = length(char(words(random)));
%disp(lenArr);

%concatenate each character of a word into into vector B and C
for i = 1:lenArr
    
    B = [B strcat("",upper(A(i)))];
    C = [C B(i)];
    
end

%assigning all the data in vector C to "?"
C(:) = "?";

%Answer
disp(A)

% stores the index of the character that user get right
D = [];

switch_btn = 1;
score = 0;

    C(:) = "?";
    %Question Board
    disp(C);

    disp("Score : " + score);

    %Main loop     
    for x = 1:lenArr
        
    
        %user input
        n = upper(input("Enter a letter : ","s"));
    
        %compares user input with the each characters of the word
        letter_found = strcmp(n,B);
    
        %gets the index if the character matches
        letter_index = find(letter_found);
    
        %stores the index 
        D = [D letter_index];
    
        %replaces all the "?" in vector C according to indexes found in vector
        %D with all the data in vector B (index as in vector D)
        C(D(:)) = B(D(:));
    
        %
        disp(C);
        if C == B
            disp("Great job!");
            usr_opt = input("Do you wish to play again? (YES = 1, NO =0) : ");
        if usr_opt == 1
            score = score + 1;
            guess_the_country();
        else 
            break;
        end
     end
               
    end
    

end


        
   
