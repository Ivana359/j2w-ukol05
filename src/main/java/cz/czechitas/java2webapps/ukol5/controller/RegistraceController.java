package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("")
  public ModelAndView index (){
    ModelAndView modelAndView = new ModelAndView("formular");
    modelAndView.addObject("form", new RegistraceForm());
    return modelAndView;
  }

  @PostMapping("")
  public ModelAndView form (@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult){
    if (bindingResult.hasErrors()){
      return new ModelAndView("formular");
    }
    int vek = (form.getDatumNarozeni().until(LocalDate.now()).getYears());
    if(vek >=15 || vek < 9){
      return new ModelAndView("kontrolaVeku");
    }
    return new ModelAndView("rekapitulace")
            .addObject("jmeno", form.getJmeno())
            .addObject("prijmeni",form.getPrijmeni())
            .addObject("email", form.getEmail())
            .addObject("telefon", form.getTelefon());
  }

}
