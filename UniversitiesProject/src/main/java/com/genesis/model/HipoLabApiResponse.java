package com.genesis.model;

import java.util.List;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Setter
@Getter
@ToString
@JsonPropertyOrder({"alpha_two_code", "web_pages", "state-province", "name","domains","country"})
public class HipoLabApiResponse {

    @JsonProperty("alpha_two_code")
    private String countryCode;
    
    @JsonProperty("web_pages")
    private List<String> webPageModel;
    
    @JsonProperty("state-province")
    private String stateProvince;
    
    @JsonProperty("name")
    private String universityName;
    
    @JsonProperty("domains")
    private List<String> domains;
    
    @JsonProperty("country")
    private String country;
}
