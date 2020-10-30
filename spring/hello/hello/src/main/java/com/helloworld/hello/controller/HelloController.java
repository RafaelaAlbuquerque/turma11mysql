package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

	@GetMapping("/hello")
	public String hello() {
		return "Hello Generation!!!";
	}
	

	@GetMapping("/hello1")
	public String hello1() {
		return "Orientação ao futuro; Responsabilidade Pessoal; Atenção aos detalhes";
	}
	
	@GetMapping("/hello2")
	public String hello2() {
		return "Aprender spring boot";
	}
}
