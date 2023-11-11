package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class RegistraceForm {

    @NotBlank(message = "Vyplňte jméno dítěte.")
    private String jmeno;
    @NotBlank(message = "Vyplňte příjmení dítěte.")
    private String prijmeni;
    @NotNull(message = "Vyplňte datum narození dítěte.")

    private LocalDate datumNarozeni;
    @NotNull(message = "Vyplňte pohlaví dítěte.")
    private Pohlavi pohlavi;
    @NotBlank(message = "Zvolte období, ve kterém pojede dítě na tábor.")
    private String turnus;
    @Email(message = "Zadejte platnou e-mailovou adresu.")
    private String email;
    private String telefon;

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public Pohlavi getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(Pohlavi pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }
}
