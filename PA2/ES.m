lb = -10 * ones(1,30);
ub = 10 * ones(1,30);
N = 30;
fitnessfct = @bbf1;
ss_vector(1:30) = 2;
generations = 0;


#PICK BEST PARENTS
function parents = selectparents(population, I)
   parent1 = population(I(1),:);
   parent2 = population(I(2),:);
   parent3 = population(I(3),:);
   parents = [parent1;parent2;parent3];
end

#RECOMBINE PARENTS
function rec_population = recombine(parents)
   rec_population = [];
   for i = 1:100
      for j = 1:30
         rec_population(i,j) = parents(randperm(3,1),j);
      end
   end
end

#MUTATE STEP SIZE VECTOR
function ss_vector = ss_mutate(ss_vector)
   tau = 1/sqrt(2*sqrt(30));
   taucomma = 1/sqrt(2*30);
   for i = 1:30
      mutated_vector(i) = ss_vector(i) * exp((taucomma * randn) + (tau * randn));
   end
   ss_vector = mutated_vector;
end

#MUTATE POPULATION
function mut_population = mutate(rec_population, ss_vector)
   for i = 1:100
      for j = 1:30
         mut_population(i,j) = rec_population(i,j) + (ss_vector(j) * randn);
      end
   end
end

#INITIALIZING POPULATION
population = []
for i = 1:20
   for j = 1:N
      x(j) = randi([lb(j), ub(j)]);
   end
   population(i,:) = x;
end

#EVALUATING POPULATION
for i = 1:rows(population)
   pop_fitness(i) = fitnessfct(population(i,:));
end

[PF, PI] = sort(pop_fitness);

fopt = PF(1);
xopt = population(PI(1),:);

##### BEGIN ES #####
while generations < 1000
   parents = selectparents(population, PI);
   rec_population = recombine(parents);
   ss_vector = ss_mutate(ss_vector);
   mut_population = mutate(rec_population, ss_vector);

   #SELECTING FROM MU + LAMBDA
   combined = unique([population;mut_population], 'rows');
   for i = 1:rows(combined)
      com_fitness(i) = fitnessfct(combined(i,:));
   end
   [CF, CI] = sort(com_fitness);
   if CF(1) <= fopt
      fopt = CF(1);
      xopt = combined(CI(1),:);
   end
   population = combined(CI(1:20),:);
   printf("Generation %g, best so far: %g \n \r", generations, fopt)
   generations++;
end
