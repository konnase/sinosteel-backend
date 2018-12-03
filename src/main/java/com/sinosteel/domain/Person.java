package com.sinosteel.domain;


import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Mark Angrish
 */
@NodeEntity
public class Person extends BaseEntity{

	private String name;
	private int born;

	@Relationship(type = "ACTED_IN")
	private List<Movie> movies = new ArrayList<>();

	public Person() {
	}

	public Person(String name, int born) {
		this.name = name;
		this.born = born;
	}

	public String getId() {
		return super.getId();
	}

	public String getName() {
		return name;
	}

	public int getBorn() {
		return born;
	}

	public List<Movie> getMovies() {
		return movies;
	}
}