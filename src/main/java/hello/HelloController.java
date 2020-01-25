package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import hello.Load;


@RestController
public class HelloController {
	
	@RequestMapping("/")
	public String index() {
		return "Greetings from Spring Boot!";
	}
	@RequestMapping("/health")
	public String getHealth() {
		return "This is a healthy Java Spring Web App, healthy as a huge steak with french fries and a cold beer :)";
	}
	@RequestMapping("/hidden/stress")
	public String stressCPU() {
		//Load carga = new Load();
		Load l = new Load();
		l.Load("Thread 1", 1.0, 120000);
		l.start();
		return " Stressing the CPU, calm down and wait )";
		
		
	}
	
}
