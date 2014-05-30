package de.hamburg.haw.wiii.dao;

// default package
// Generated 30.05.2014 10:56:20 by Hibernate Tools 4.0.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Datum generated by hbm2java
 */
@Entity
@Table(name = "DATUM", schema = "ABC581")
public class Datum implements java.io.Serializable {

	private Date datum;
	private String tag;
	private String monat;
	private String jahr;
	private Set<Bondaten> bondatens = new HashSet<Bondaten>(0);

	public Datum() {
	}

	public Datum(Date datum) {
		this.datum = datum;
	}

	public Datum(Date datum, String tag, String monat, String jahr,
			Set<Bondaten> bondatens) {
		this.datum = datum;
		this.tag = tag;
		this.monat = monat;
		this.jahr = jahr;
		this.bondatens = bondatens;
	}

	@Id
	@Temporal(TemporalType.DATE)
	@Column(name = "DATUM", unique = true, nullable = false, length = 7)
	public Date getDatum() {
		return this.datum;
	}

	public void setDatum(Date datum) {
		this.datum = datum;
	}

	@Column(name = "TAG", length = 5)
	public String getTag() {
		return this.tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Column(name = "MONAT", length = 5)
	public String getMonat() {
		return this.monat;
	}

	public void setMonat(String monat) {
		this.monat = monat;
	}

	@Column(name = "JAHR", length = 5)
	public String getJahr() {
		return this.jahr;
	}

	public void setJahr(String jahr) {
		this.jahr = jahr;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "datum")
	public Set<Bondaten> getBondatens() {
		return this.bondatens;
	}

	public void setBondatens(Set<Bondaten> bondatens) {
		this.bondatens = bondatens;
	}

}
