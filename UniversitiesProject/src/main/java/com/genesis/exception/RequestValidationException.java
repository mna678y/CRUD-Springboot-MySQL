package com.genesis.exception;

import java.util.ArrayList;
import java.util.List;

public class RequestValidationException extends Exception {
	private static final long serialVersionUID = 5926468583005150707L;

	private final List<String> validationErrors = new ArrayList<>();

	public RequestValidationException() {
		super();
	}

	public RequestValidationException(String message) {
		super();
		this.validationErrors.add(message);
	}

	public RequestValidationException(Throwable cause) {
		super(cause);
		this.validationErrors.add(cause.getMessage());
	}

	public RequestValidationException(List<String> validationErrors) {
		super();
		this.validationErrors.addAll(validationErrors);
	}

	public List<String> getValidationErrors() {
		return this.validationErrors;
	}

}
