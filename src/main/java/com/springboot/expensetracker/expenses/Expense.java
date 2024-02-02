package com.springboot.expensetracker.expenses;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Size;

@Entity
public class Expense {
	
	public Expense() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue
	private int id;
	
	private String username;
	
	@Size(min=3, message="Enter atleast 3 characters")
	private String expenseName;
	
	@Min(value = 1)
	private int amount;
	
	private LocalDate expenseDate;

	public Expense(int id, String username, @Size(min = 3, message = "Enter atleast 3 characters") String expenseName,
			@Min(1) int amount, LocalDate expenseDate) {
		super();
		this.id = id;
		this.username = username;
		this.expenseName = expenseName;
		this.amount = amount;
		this.expenseDate = expenseDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(String expenseName) {
		this.expenseName = expenseName;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public LocalDate getExpenseDate() {
		return expenseDate;
	}

	public void setExpenseDate(LocalDate expenseDate) {
		this.expenseDate = expenseDate;
	}

	@Override
	public String toString() {
		return "Expense [id=" + id + ", username=" + username + ", expenseName=" + expenseName + ", amount=" + amount
				+ ", expenseDate=" + expenseDate + "]";
	}

	

	
}
