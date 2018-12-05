function [xopt,fopt] = ES_final(fitnessfct, N, lb, ub, eval_budget)

   ss_vector(1:30) = 1;     %% Step size vector 
   evaluations = 0;
   generation = 0;

   mu = 10;         %% number of parents
   lambda = 50;    %% number of offsprings

   
   %PICK BEST PARENTS
   function parents = selectparents(population, I)                          % function to select parents from the population based on the best fitness values
      parent1 = population(I(1),:);
      parent2 = population(I(2),:);
      parent3 = population(I(3),:);
      parents = [parent1;parent2;parent3];                                  % output the 3 best parents found
   end

 
   %RECOMBINE PARENTS
   function rec_population = recombine(parents,lambda)                      % function that recombines the population by applying a permutation that generates lambda offsprings
      rec_population = zeros(lambda,N);
      for i = 1:lambda
         for j = 1:N
            rec_population(i,j) = parents(randperm(3,1),j);                 % permutating the parents randomly
         end
      end
   end                                                                      % output the recombined population of lamdba offsprings


   %MUTATE POPULATION
   function mut_population = mutate(rec_population, ss_vector,lambda)       % function that mutates the recombined population using the step size vector
      for i = 1:lambda
         for j = 1:N
            mut_population(i,j) = rec_population(i,j) + (ss_vector(j) * randn);
         end
      end
   end                                                                      % output the mutated population 

  
                        %%%%%%%% BEGIN ES %%%%%%%%

   %INITIALIZING POPULATION
   population = zeros(mu,N);
   for i = 1:mu                                    
      for j = 1:N
         x(j) = randi([lb(j), ub(j)]);                                      % randomly initialize the population of mu individuals with size N
      end
      population(i,:) = x;
   end
   

   %EVALUATING POPULATION
   for i = 1:mu
      pop_fitness(i) = fitnessfct(population(i,:));                         % evaluate the fitness function to be able to discriminate the best individuals
      evaluations = evaluations + 1;                                        % count every evaluation function - this will increase until the termination value will be reached
   end

   [PF, PI] = sort(pop_fitness);                                            % sort the fitness values
   fopt = PF(1);                                                            % save the best fitness value
   xopt = population(PI(1),:);                                              % save the individual with highest fitness value
   

   while evaluations < eval_budget                                          % loop until the termination criterion is met
      parents = selectparents(population, PI);
      rec_population = recombine(parents,lambda);
      mut_population = mutate(rec_population, ss_vector,lambda);

      %SELECTING FROM MU + LAMBDA
      combined = unique([population;mut_population], 'rows');               % join the mu parents with lambda offsprings 
      nrows_comb = size(combined,1);
      for i = 1:nrows_comb
         com_fitness(i) = fitnessfct(combined(i,:));                        % evaluate the fitness function
         evaluations = evaluations + 1;
      end
      [CF, CI] = sort(com_fitness);
      if CF(1) <= fopt                                                      % if the fitness value is better than save it with the associated individual
         fopt = CF(1);
         xopt = combined(CI(1),:);
      end
      population = combined(CI(1:mu),:);                                    % retrieve the best individual from the population
      fprintf("Generation %g, best so far: %g \n \r", generation, fopt)
      
      generation = generation + 1;                                          % next generation
   end
   
end

