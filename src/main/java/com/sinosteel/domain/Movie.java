package com.sinosteel.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
public class Movie extends BaseEntity{

	private String title;
	private int released;
	private String tagline;

	@JsonIgnoreProperties("movie")
	@Relationship(type = "ACTED_IN", direction = Relationship.INCOMING)
	private List<ActorRole> actorRoles;

	public Movie() {
	}

	public Movie(String title, int released, String tagline) {
		this.title = title;
		this.released = released;
		this.tagline = tagline;
	}

	public String getId() {
		return super.getId();
	}
	public void setId(String id) {
		super.setId(id);
	}

	public String getTitle() {
		return title;
	}

	public int getReleased() {
		return released;
	}

	public String getTagline() {
		return tagline;
	}

	public List<ActorRole> getActorRoles() {
		return actorRoles;
	}

	public void addRole(ActorRole actorRole) {
		if (this.actorRoles == null) {
			this.actorRoles = new ArrayList<>();
		}
		this.actorRoles.add(actorRole);
	}
}