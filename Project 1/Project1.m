% Name: Yuanyuan Peng
% ID: 108 734 720
input_valid =1;
while input_valid == 1
prompt1='Enter the number of question you want to test\n1 Plotting and formatted output\n2 Functions looping through arrays and error handling\n3 Gaussian elimination\n4 Exit\n';
%let the user give a input to chose which part of the homeowrk he/she wants
%to test
Input1 = input(prompt1);

if Input1 == 1
    %test the Plotting and formatted output question 
    prompt_q1='To test question 1 please enter a level of desired precision\n';
    user_level=input(prompt_q1);
    %call fucntion 1 here and return the answer at the end
    New_PI = MonteCarlo_pi(user_level);
    %print out the result
    Pi_toString =  'The Pi we find with %d is %f';
    to_str = sprintf(Pi_toString, user_level,New_PI);
    %display the result on screen
    disp(to_str);
    input_valid=0;
elseif Input1 == 2
    %test the runcitons looping through arrays and error handling question
    
    prompt_matrix = 'Enter a matrix\n=';
    user_matr = input(prompt_matrix);
    prompt_vect='Enter a vector\n=';
    user_vect = input(prompt_vect);
    
    user_result = inner(user_matr, user_vect);
    disp('The inner product is');
    %display the result on screen
    disp(user_result);
    input_valid=0;
    
elseif Input1 == 3
    %test the Gaussian elimination question 
    
    input_valid=0;
elseif Input1 == 4
    %stop the program if 4 is entered
    disp('Program Ends');
    input_valid=0;
else
    %if the user endtered a wrong number tell the user enter a new one
    disp('Invalid input, please enter again');
    % loop
end
end
