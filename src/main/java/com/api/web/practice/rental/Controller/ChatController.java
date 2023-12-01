package com.api.web.practice.rental.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.api.web.practice.rental.Service.ChatService;

import com.api.web.practice.rental.model.Message;
import com.api.web.practice.rental.model.Selling;

@Controller
public class ChatController {
	
	
	@Autowired 
	private ChatService chatservice;
	@GetMapping("/Chatting")
	public String ChatPage() {
		return "Chatting";
	}
	//Fetching the username by it's id in Chat.jsp page
	//edit data by id 
	@RequestMapping("/chat/{id}")
	public String editId(@PathVariable("id") int chatId, Model model) {
	    Selling chat = chatservice.chatById(chatId);
	    model.addAttribute("chat", chat);
	    return "forward:/Chatting";
	}

	//message controller
	@PostMapping("/message")
	public String Messaging(@ModelAttribute("chat") Message m) {
		
		 chatservice.messagesave(m);
		 return "redirect:/SellviewPage";
	}


}
