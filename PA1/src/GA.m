function [aopt, fopt] = GA(evaluation_budget)

########## FUNCTIONS ##########

#increase functionevaluations function
function evals = add_evals(u)
  %#codegen
  persistent counter;
  if isempty(counter)
    counter = 0;
  end
  if (u == 1)
    counter = counter + 1;
  end
  evals = counter;
end

#calculate fitness
function fitness = calculate_fitness(population)
  power_loss = [];
  for i = 1:columns(population)
    if valid_119(population(:,i)) == 0
      power_loss = [power_loss, realmax];
    else
      power_loss = [power_loss, calculation_119(population(:,i))];
      add_evals(1);
    end
  end
  fitness = ((1 ./ power_loss * 10000).^8) / 100000;
end

#mateselection function
function mate = selectmate(population, fitness)
  counter = 0;
  while counter < 1000
    counter++;
    index = randi(size(population, 2), 1);
    minimum = 0.00;
    maximum = max(fitness);
    r = (maximum-minimum).*rand(1) + minimum;
    if r < fitness(index)
      mate = population(:,index);
      return
    end
  end
end

#mutation function
function mutation_mate = mutate(candidate, pm)
  initial = [25;17;15;21;18;12;11;16;12;17;20;18;12;16;20];
  mutation_mate = candidate;
  for i = 1:rows(mutation_mate)
    if rand < pm
      mutation_mate(i) = randi([1 initial(i)]);
    end
  end
end

#crossover function
function co_offspring = crossover(mates, pc)
  co_point = 7;
  co_offspring1 = [];
  co_offspring2 = [];
  if rand < pc
    co_offspring1(1:co_point) = mates(1:co_point, 2);
    co_offspring1(co_point+1:15) = mates(co_point+1:15, 1);
    co_offspring2(1:co_point) = mates(1:co_point, 1);
    co_offspring2(co_point+1:15) = mates(co_point+1:15, 2);
    co_offspring = [transpose(co_offspring1), transpose(co_offspring2)];
  else
    co_offspring = mates;
  end
end

######### GA #########

addpath matpower4.1/
load('para119.mat')

#Step1: Create random population
initial = [25;17;15;21;18;12;11;16;12;17;20;18;12;16;20];
population = zeros(15,100);
for i = 1:columns(population)
  population(:,i) = mutate(initial, 0.2);
end

#Step2: Evaluate population
fitness = calculate_fitness(population);
evals = add_evals(0);

#Step3: Iterate over generations
generation = 1;
bestoffspring = initial;
bestfitness = 0;
while evals < evaluation_budget && calculation_119(bestoffspring) > 870
  fprintf("Generation: %d... \n", generation);
  offspring_population = [];
  for offspring = 1:(length(population)/2)
    mates = [selectmate(population, fitness), selectmate(population,fitness)];
    co_offspring = crossover(mates, 0.75);
    mu_offspring = [mutate(co_offspring(:,1),0.08), mutate(co_offspring(:,2),0,08)];
    offspring_population = [offspring_population, mu_offspring];
    evals = add_evals(0);
  end
  population = offspring_population;
  fitness = calculate_fitness(population);
  if max(fitness) >= bestfitness
    bestoffspring = population(:,find(fitness == max(fitness))(1));
    bestfitness = max(fitness);
  end
  fprintf("Best so far: %d \n", calculation_119(bestoffspring));
  generation++;
end

[aopt, fopt] = [bestoffspring, calculation_119(bestoffspring)];
end
