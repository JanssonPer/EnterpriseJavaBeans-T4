package example.farm.facade;

import java.util.List;

import javax.ejb.Local;

import example.farm.model.Animal;
import example.farm.model.Box;
import example.farm.model.Building;
import example.farm.model.Cow;
import example.farm.model.Food;
import example.farm.model.Hen;
import example.farm.model.Horse;
import example.farm.model.Pig;

@Local
public interface FarmFacadeLocal {
//	//Mata
//	public void feedCow(Food f);
//	
	
	//skapa
	public Animal createAnimal(Animal a);
	public Box createBox(Box a);
	public Food createFood(Food f);
	public Building createBuilding(Building a);
	
	//uppdatera
	public Animal updateAnimal(Animal a);
	public Food updateFood(Food f);
	public Box updateBox(Box a);
	public Building updateBuilding(Building a);
	
	//ta bort
	public void deleteAnimal(long a);
	public void deleteFood(long id);
	
	//hitta
	public Animal findByIdAnimal(long a);
	public Box findByIdBox(String id);
	public Building findByIdBuilding(String id);
	public Food findByIdFood(long id);
	public List<Animal> findAll();
	public List<Animal> findByTypeQuery(String type);
	
	//lägga till
	public void addAnimal(Food f, Animal a);
	public void addAmount(Food f, int amount);
	
	//ändra
	public void changeAmountInCow(Cow c, Food f) ;
	public void changeAmountInHen(Hen h, Food f) ;
	public void changeAmountInHorse(Horse h, Food powerFeed, Food hay);
	public void changeAmountInPig(Pig p, Food powerFeed, Food hay);
//	public List<Cow> sumOfCowFoodTHATAREAWESOME();
	public List<Animal> sumOfCowFood();

}
