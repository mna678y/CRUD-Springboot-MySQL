package com.genesis.util;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

@Component
public class Utilities {

	private static Logger _log = LoggerFactory.getLogger(Utilities.class);

	public static String extractIPAddress(HttpServletRequest request) {
		// Get the IP address of the client making the request
		String ipAddress = request.getRemoteAddr();
		String forwardedFor = request.getHeader("X-Forwarded-For");
		if (forwardedFor != null && !forwardedFor.isEmpty()) {
			ipAddress = forwardedFor.split(",")[0].trim();
		}
		return ipAddress;
	}

	public static <T> List<T> convertToOriginalObject(Object object, Class<T> type) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			objectMapper.registerModule(new JavaTimeModule());
			if (object != null) {
				return objectMapper.readValue(objectMapper.writeValueAsString(object),
						objectMapper.getTypeFactory().constructCollectionType(List.class, type));
			}
		} catch (Exception ex) {
			_log.error(ex.getMessage());
		}
		return null;
	}
}
