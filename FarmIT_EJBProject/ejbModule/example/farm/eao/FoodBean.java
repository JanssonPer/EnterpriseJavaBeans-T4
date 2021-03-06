package example.farm.eao;

import java.util.List;
import java.util.Set;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import example.farm.model.Animal;
import example.farm.model.Cow;
import example.farm.model.Food;

@Stateless
@LocalBean
public class FoodBean implements FoodBeanLocal {
	@PersistenceContext(unitName = "LabEJBSql")
	private EntityManager em;

	public FoodBean() {

	}

	public Food findByIdFood(long id) {
		return em.find(Food.class, id);
	}

	public Food createFood(Food f) {
		em.persist(f);
		return f;
	}

	public Food updateFood(Food f) {
		em.merge(f);
		return f;
	}

	public void deleteFood(long id) {
		Food f = this.findByIdFood(id);
		if (f != null) {
			em.remove(f);
		}
	}

	public void addAnimal(Food f, Animal a) {
		f.addAnimal(a);
	}
	public Food findFoodByType(String type) {

		TypedQuery<Food> query = em.createNamedQuery("Food.findByName", Food.class);

		query.setParameter("foodType", type);
		Food f= null;
		List<Food> results = query.getResultList();
		for(Food food: results){
			if(food.getNameFood().equals(type))
			f = food;
		}
		return f;
		
	}
	public List<Food> findAllFood() {

		TypedQuery<Food> query = em.createNamedQuery("Food.findAll", Food.class);

		List<Food> results = query.getResultList();
		return results;
	}
}
