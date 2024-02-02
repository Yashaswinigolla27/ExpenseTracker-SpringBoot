package com.springboot.expensetracker.expenses;

import java.time.LocalDate;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("username")
public class ExpenseControllerJPA {
	
	public ExpenseControllerJPA(ExpenseRepository expenseRepository) {
		super();
		this.expenseRepository = expenseRepository;
	}
	
	private ExpenseRepository expenseRepository;

	
	
	@RequestMapping("list-expenses")
	public String listAllExpenses(ModelMap model) {
		
		String username = getLoggedInUsername(model);
		
		List<Expense> expenses = expenseRepository.findByUsername(username);
		model.addAttribute("expenses", expenses);
		return "listExpenses";
		
	}
	
	@RequestMapping(value="add-expense", method = RequestMethod.GET)
	public String showNewExpensePage(ModelMap model) {
		String username = getLoggedInUsername(model);
		Expense expense = new Expense(0, username, "", 1000, LocalDate.now().plusYears(1));
		model.put("expense", expense);
		return "expense";
	}

	@RequestMapping(value="add-expense", method = RequestMethod.POST)
	public String addNewExpense(ModelMap model, @Valid Expense expense, BindingResult result) {
		
		if(result.hasErrors()) {
			return "expense";
		}
//		
		String username = getLoggedInUsername(model);
		expense.setUsername(username);
		expenseRepository.save(expense);
//		todoService.addTodo(username, todo.getDescription(), 
//				todo.getTargetDate(), todo.isDone());
		return "redirect:list-expenses";
	}
	
	@RequestMapping("delete-expense")
	public String deleteTodo(@RequestParam int id) {
		//Delete expense
		expenseRepository.deleteById(id);
		return "redirect:list-expenses";
		
	}
	
	@RequestMapping(value="update-expense", method = RequestMethod.GET)
	public String showUpdateExpensePage(@RequestParam int id, ModelMap model) {
		Expense expense = expenseRepository.findById(id).get();
		model.addAttribute("expense", expense);
		return "expense";
	}

	@RequestMapping(value="update-expense", method = RequestMethod.POST)
	public String updateExpense(ModelMap model, @Valid Expense expense, BindingResult result) {
		
		if(result.hasErrors()) {
			return "expense";
		}
		
		String username = getLoggedInUsername(model);
		expense.setUsername(username);
		expenseRepository.save(expense);
		return "redirect:list-expenses";
	}
	
	private String getLoggedInUsername(ModelMap model) {
		Authentication authentication = 
				SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
	
	
	
	

}
