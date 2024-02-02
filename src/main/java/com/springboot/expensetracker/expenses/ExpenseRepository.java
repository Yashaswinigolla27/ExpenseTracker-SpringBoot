package com.springboot.expensetracker.expenses;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ExpenseRepository extends JpaRepository<Expense, Integer>{

	public List<Expense> findByUsername(String username);

}
