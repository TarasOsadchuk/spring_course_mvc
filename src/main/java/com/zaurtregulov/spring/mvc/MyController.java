package com.zaurtregulov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails() {
//        return "ask-emp-details-view";
//    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());

        return "ask-emp-details-view";
    }

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails(Model model) {
//
//        Employee employee = new Employee();
//        employee.setName("Taras");
//        employee.setSurname("Osadchuk");
//        employee.setSalary(500);
//
//        model.addAttribute("employee", employee);
//
//        return "ask-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showDetails() {
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showDetails(HttpServletRequest request, Model model) {
//
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - Java Programmer");
//
//        return "show-emp-details-view";

//    @RequestMapping("/showDetails")
//    public String showDetails(@RequestParam("employeeName") String empName
//            , Model model) {
//
//        empName = "Mr. " + empName + "!";
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";

    @RequestMapping("/showDetails")
    public String showDetails(@Valid @ModelAttribute("employee") Employee emp
            , BindingResult bindingResult) {

//        String name = emp.getName();
//        emp.setName("Mr. " + name);
//
//        String surname = emp.getSurname();
//        emp.setSurname(surname + "!");
//
//        int salary = emp.getSalary();
//        emp.setSalary(salary * 10);

        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view";
        }
    }
}
