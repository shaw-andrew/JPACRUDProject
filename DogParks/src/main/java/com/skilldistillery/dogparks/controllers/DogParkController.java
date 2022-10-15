package com.skilldistillery.dogparks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.dogparks.data.DogParkDAO;
import com.skilldistillery.dogparks.entities.DogPark;

@Controller
public class DogParkController {

	@Autowired
	private DogParkDAO parkDao;

	@RequestMapping(path = { "index.do", "/" })
	public String index(Model model) {
		model.addAttribute("dogParks", parkDao.findAll());
		return "index";
	}

	@RequestMapping(path = "getPark.do")
	public String showPark(int pid, Model model) {
		model.addAttribute("park", parkDao.findById(pid));
		return "showpark";
	}

	@RequestMapping(path = "createParkForm.do", method = RequestMethod.GET)
	public String createParkForm(DogPark dogPark, Model model) {
		return "create";
	}
	
	@RequestMapping(path = "createPark.do", method = RequestMethod.POST)
	public String createPark(DogPark dogPark, Model model) {
		model.addAttribute("park", parkDao.create(dogPark));
		return "addConfirmation";
	}

	@RequestMapping(path = "deletePark.do", method = RequestMethod.POST)
	public String deletePark(int id, RedirectAttributes redir) {
		boolean deleted = parkDao.deleteById(id);
		redir.addFlashAttribute("confirm", deleted);
		return "redirect:deleteConfirmation.do";
	}

	@RequestMapping(path = "deleteConfirmation.do", method = RequestMethod.GET)
	public String deleteConfirmation() {
		return "deleteConfirmation";
	}
	
	@RequestMapping(path = "updateOrDelete.do", method = RequestMethod.GET)
	public String modify(int id, Model model) {
		model.addAttribute("park", parkDao.findById(id));
		return "update";
	}
	
	@RequestMapping(path = "updatePark.do", method = RequestMethod.POST)
	public String updatePark(int id, DogPark dogPark, RedirectAttributes redir) {
		DogPark updatedPark = parkDao.update(id, dogPark);
		redir.addFlashAttribute("park", updatedPark);
		return "redirect:updateConfirmation.do";
	}
	
	@RequestMapping(path = "updateConfirmation.do", method = RequestMethod.GET)
	public String updateConfirmation() {
		return "updateConfirmation";
	}
	
	
}