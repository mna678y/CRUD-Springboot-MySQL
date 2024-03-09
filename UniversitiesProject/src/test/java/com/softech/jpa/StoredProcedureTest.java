package com.softech.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.StoredProcedureQuery;



public class StoredProcedureTest {
	
    private static EntityManagerFactory factory = null;
    private static EntityManager entityManager = null;

//    @Before
    public static void init() {
        factory = Persistence.createEntityManagerFactory("jpa-db");
        entityManager = factory.createEntityManager();
    }

//    @Test
    public void findCarsByYearWithNamedStored() {
        StoredProcedureQuery findByYearProcedure = 
          entityManager.createNamedStoredProcedureQuery("clsa_alfa_sdk_integration.get_bank_account_no");
        
        StoredProcedureQuery storedProcedure = 
          findByYearProcedure.setParameter("cnic", "12313");
        
//        storedProcedure.getResultList()
//          .forEach(c -> Assert.assertEquals(new Integer(2015), ((Car) c).getYear())); 
    }

 //   @Test
  //  public void findCarsByYearNoNamedStored() {
//        StoredProcedureQuery storedProcedure = 
//          entityManager
//            .createStoredProcedureQuery("FIND_CAR_BY_YEAR",Car.class)
//            .registerStoredProcedureParameter(1, Integer.class, ParameterMode.IN)
//            .setParameter(1, 2015);
       
//        storedProcedure.getResultList()
//          .forEach(c -> Assert.assertEquals(new Integer(2015), ((Car) c).getYear()));
 //   }

}