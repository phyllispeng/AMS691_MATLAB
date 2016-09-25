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
    Pi_toString =  'The Pi we find with user level %d is %f';
    to_str = sprintf(Pi_toString, user_level,New_PI);
    %display the result on screen
    disp(to_str);
    input_valid=0;
    
elseif Input1 == 2
    %test the runcitons looping through arrays and error handling question
    %ask user to enter matrix and vector
    prompt_matrix = 'Enter a matrix\n=';
    user_matr = input(prompt_matrix);
    prompt_vect='Enter a vector\n=';
    user_vect = input(prompt_vect);
    %call the function to calculate 
    user_result = inner(user_matr, user_vect);
    disp('The inner product is');
    %display the result on screen
    disp(user_result);
    input_valid=0;
    
elseif Input1 == 3
    %let the default form input boolean to 0 to start the loop
    invalid_input = 0;
    
    %test the Gaussian elimination question 
    %ask for matrix input
    prompt_matrix_2 = ' Enter a matrix\n=';
    user_matr_2=input(prompt_matrix_2);
    %use while loop check the input of form is right, if not enter again 
    while invalid_input ==0
        %ask user to chose a form
        prompt_form= 'Enter the number of form you want to chose\n1 Row echelon form\n2 Row canonical form\n';
        user_form=input(prompt_form);
        %1 for row enchelon
        if user_form == 1
            output_str = 'Row echelon form';
            final_form = GElimination(user_matr_2,user_form);
            %set the boolean to 1 to stop the loop
            invalid_input = 1;
        %2 for canonical 
        elseif user_form == 2
            output_str = 'Row canonical form';
            final_form = GElimination(user_matr_2,user_form);
            %set the boolean to 1 to stop the loop
            invalid_input = 1;
        else
            %ask user to enter again if the input is invalid
            disp('* Invalid input, pleas enter it again *');
            %keep looping

        end

    end
    %print out the final answer
    form_toString =  'The matrix we find with %s is ';
    form_to_str = sprintf(form_toString, output_str);
    disp(form_to_str);
    %stop the loop
    input_valid=0;
    
    
    
elseif Input1 == 4
    %stop the program if 4 is entered
    disp('Program Ends');
    %stop the loop
    input_valid=0;
else
    %if the user endtered a wrong number tell the user enter a new one
    disp('* Invalid input, please enter again *');
     
end
end
