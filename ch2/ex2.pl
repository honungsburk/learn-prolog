house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
wizard(harry).
magic(X):- house_elf(X).
magic(X):- wizard(X).
magic(X):- witch(X).

% 1. ?-  magic(house_elf). % false
% 2. ?-  wizard(harry). % true
% 3. ?-  magic(wizard). % false
% 4. ?-  magic(’McGonagall’). % true
% 5. ?-  magic(Hermione). % Hermione is a variable, so it will be unified with house_elf, wizard, or witch