package com.example.cities;

import io.restassured.RestAssured;
import org.junit.Before;
import org.junit.Test;

import static io.restassured.RestAssured.get;
import static org.hamcrest.Matchers.equalTo;

public class CityTest {
    String SERVICE_URI = "http://localhost";
    int SERVICE_PORT = 8080;

    @Before
    public void init(){
        if (System.getenv("CITY_SERVICE_URI") != null) {
            SERVICE_URI = System.getenv("CITY_SERVICE_URI");
        }
        if (System.getenv("CITY_SERVICE_PORT") != null) {
            SERVICE_PORT = Integer.valueOf(System.getenv("CITY_SERVICE_PORT"));
        }
        RestAssured.baseURI =SERVICE_URI;
        RestAssured.port =SERVICE_PORT;
    }

    @Test
    public void testSearchByPostalcode() {
        get("/cities/search/postalCode?q=00501").
                then().
                log().all().
                body("_embedded.cities[0].name", equalTo("HOLTSVILLE"));
    }
}
