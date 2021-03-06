package com.spanish.english.services;

import java.util.Set;

import com.spanish.english.form.Tokens;
import com.spanish.english.form.TokensCollection;

public interface TokensServices {
	boolean addOrUpdateTokens(Tokens tokens);

	Set<Tokens> getTokensList();

	Tokens getTokensById(long id);

	boolean deleteTokens(long Id);

	Set<Tokens> getTokensListByCountry(long countryId);

	boolean addOrUpdateTokensCollection(TokensCollection tc);
}
