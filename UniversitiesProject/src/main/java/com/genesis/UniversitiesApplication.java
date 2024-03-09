package com.genesis;

import java.util.concurrent.TimeUnit;

import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableTransactionManagement
public class UniversitiesApplication {

	public static void main(String[] args) {
		SpringApplication.run(UniversitiesApplication.class, args);
	}

	@Bean
	public RestTemplate getRestTemplate() {
		// Create an HttpClient with a custom timeout configuration
		CloseableHttpClient httpClient = HttpClientBuilder.create().setConnectionTimeToLive(120, TimeUnit.SECONDS)
				.build();

		// Configure the RestTemplate to use the custom HttpClient
		RestTemplate restTemplate = new RestTemplate(new HttpComponentsClientHttpRequestFactory(httpClient));
		return restTemplate;
	}
}