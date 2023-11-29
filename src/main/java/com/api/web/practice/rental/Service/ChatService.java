package com.api.web.practice.rental.Service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.api.web.practice.rental.model.Message;
import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.MessageRepo;
import com.api.web.practice.rental.respository.SellingRepository;


@Service
public class ChatService {
	@Autowired 
	private SellingRepository Chatrepo;
	@Autowired
	private MessageRepo Messagerepo;
	List<Selling> list= new ArrayList<Selling>();
	
	//Getting the username by its id ..
	public Selling chatById(int ChatId) {
		return Chatrepo.findById(ChatId).get();
	}
	//adding the chat content into the webpage..
	 public void messagesave(Message m) {
		  Messagerepo.save(m);
	 }

}
