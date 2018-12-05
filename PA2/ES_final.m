function [xopt,fopt] = ES_final(fitnessfct, N, lb, ub, eval_budget)

   ss_vector(1:30) = 1;     %% Step size vector 
   evaluations = 0;
   generation = 0;

   mu = 10;         %% number of parents
   lambda = 50;    %% number of offsprings

   
   %PICK BEST PARENTS
   function parents = selectparents(population, I)
      parent1 = population(I(1),:);
      parent2 = population(I(2),:);
      parent3 = population(I(3),:);
      parents = [parent1;parent2;parent3];
   end
 
   %RECOMBINE PARENTS
   function rec_population = recombine(parents,lambda)
      rec_population = [];
      for i = 1:lambda
         for j = 1:30
            rec_population(i,j) = parents(randperm(3,1),j);
         end
      end
   end

   %MUTATE POPULATION
   function mut_population = mutate(rec_population, ss_vector,lambda)
      for i = 1:lambda
         for j = 1:30
            mut_population(i,j) = rec_population(i,j) + (ss_vector(j) * randn);
         end
      end
   end

  
                        %%%%%%%% BEGIN ES %%%%%%%%

   %INITIALIZING POPULATION
   population = zeros(mu,N);
   for i = 1:mu
      for j = 1:N
         x(j) = randi([lb(j), ub(j)]);
      end
      population(i,:) = x;
   end

   %EVALUATING POPULATION
   for i = 1:mu
      pop_fitness(i) = fitnessfct(population(i,:));
      evaluations = evaluations + 1;
   end

   [PF, PI] = sort(pop_fitness);
   fopt = PF(1);
   xopt = population(PI(1),:);

   while evaluations < eval_budget
      parents = selectparents(population, PI);
      rec_population = recombine(parents,lambda);
      mut_population = mutate(rec_population, ss_vector,lambda);

      %SELECTING FROM MU + LAMBDA
      combined = unique([population;mut_population], 'rows');
      nrows_comb = size(combined,1);
      for i = 1:nrows_comb
         com_fitness(i) = fitnessfct(combined(i,:));
         evaluations = evaluations + 1;
      end
      [CF, CI] = sort(com_fitness);
      if CF(1) <= fopt
         fopt = CF(1);
         xopt = combined(CI(1),:);
      end
      population = combined(CI(1:mu),:);
      fprintf("Generation %g, best so far: %g \n \r", generation, fopt)
      
      generation = generation + 1;
   end

end

