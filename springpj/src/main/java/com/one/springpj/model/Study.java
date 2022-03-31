package com.one.springpj.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
public class Study {
	@Id
	@GeneratedValue
	@Column(name="study_id")
	private Long id;
	
	private String title;
	
	@Lob
	private String content;
	
	private int limitCount;
	
	@ManyToOne
	@JoinColumn(name="local_id")
	private Local local;
	
	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date startDate;
	
	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date endDate;
	
	@ManyToOne
	@JoinColumn(name="leader_id")
	private User leader;
	
	@OneToMany(mappedBy = "study",
			fetch =FetchType.LAZY,
			cascade = CascadeType.ALL)
	private List<Board> boards;

	
	@ColumnDefault("0")
	private int mileage;
	
	@ColumnDefault("0")
	private int likes;
	
	@OneToMany(mappedBy = "study",
			fetch = FetchType.LAZY,
			cascade = CascadeType.ALL)
	private List<Book> books;
}