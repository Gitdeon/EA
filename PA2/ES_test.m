function [xopt,fopt] = ES_test(fitnessfct, N, lb, ub, eval_budget)
   %temporarily
   ss_vector(1:30) = 1;
   evaluations = 0;
   generation = 0;
%    N = 30;
%    lb = -100*ones(1,30);
%    ub = 100*ones(1,30);
%    eval_budget = 10000;

   mu = 10;         %%% number of parents
   lambda = 50;    %%% number of offsprings
   %end temporarily
   
  select_method = 1;     % MU + LAMBDA
 % select_method = 0;     % MU , LAMBDA+
 
 
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


   %MUTATE STEP SIZE VECTOR
   function ss_vector = ss_mutate(ss_vector)
      tau = 1/sqrt(2*sqrt(30));
      taucomma = 1/sqrt(2*30);
      rand_norm = randn;
      for i = 1:30
         mutated_vector(i) = ss_vector(i) * exp((taucomma * rand_norm) + (tau * randn));
      end
      ss_vector = mutated_vector;
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
      ss_vector = ss_mutate(ss_vector);
      mut_population = mutate(rec_population, ss_vector,lambda);
      
      if select_method == 1

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
      
      elseif select_method == 0
      
           %SELECTING FROM MU , LAMBDA
          nrows_mut_pop = size(mut_population,1);
          for i = 1:nrows_mut_pop
             mut_pop_fitness(i) = fitnessfct(mut_population(i,:));
             evaluations = evaluations + 1;
          end
          [MF, MI] = sort(mut_pop_fitness);
          if MF(1) <= fopt
             fopt = MF(1);
             xopt = mut_population(MI(1),:);
          end
          population = mut_population(MI(1:mu),:);
          fprintf("Generation %g, best so far: %g \n \r", generation, fopt)
          
      end
      
      generation = generation + 1;
   end

end

