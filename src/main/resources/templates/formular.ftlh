[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <link rel="stylesheet" href="/css/style.css" />

</head>
<body>
<div class = "container">
    <form id= " formular" class = "basket" action= "/" method="post">
        <h1>Registrace dítěte na letní dětský tábor</h1>

        <div class="section">
            <h2>Osobní údaje dítěte</h2>
            <label for = "jmeno" class = "row">Jméno dítěte (povinný údaj)</label>
            [@spring.formInput path="form.jmeno"/]
            <div class = "chyba">[@spring.showErrors"<br>"/]</div>

            <label for = "prijmeni" class = "row">Příjmení dítěte (povinný údaj)</label>
            [@spring.formInput path="form.prijmeni"/]
            <div class = "chyba">[@spring.showErrors"<br>"/]</div>

            <label for = "datumNarozeni" class = "row">Datum narození dítěte (povinný údaj)</label>
            [@spring.formInput fieldType="date" path="form.datumNarozeni"/]
            <div class = "chyba">[@spring.showErrors"<br>"/]</div>

            <div class="row">Pohlaví dítěte (povinný údaj)</div>
            <div class="radio-group">
                <div>
                    <input id="pohlavi1" type="radio" name="pohlavi" value="chlapec" style="vertical-align: middle"/>
                    <label for="pohlavi1">Chlapec</label>

                    <input id="pohlavi2" type="radio" name="pohlavi" value="divka" style="vertical-align: middle"/>
                    <label for="pohlavi2">Dívka</label>
                </div>
            </div>
            [@spring.bind"form.pohlavi"/]
            <div class="chyba">[@spring.showErrors "<br>"/]</div>


            <br>
            <div class="section">

                <h2>Kdy pojede dítě na tábor?</h2>
                <label for = "turnus" class = "row">Turnus (povinný údaj)</label>
                [@spring.formSingleSelect path="form.turnus" options={
                "": "",
                "1.turnus":"06. červenec až 20. červenec 2024",
                "2.turnus":"20. červenec až 03. srpen 2024",
                "3.turnus":"03. srpen až 17. srpen 2024",
                "4.turnus":"17. srpen až 31. srpen 2024"
                }/]
                <div class = "chyba">[@spring.showErrors"<br>"/]</div>
            </div>
            <br>

            <div class="section">
                <h2>Kontakty na rodiče</h2>
                <label for = "email" class = "row">E-mail</label>

                <input type="email" id="email" name="form.email">

                <label for = "telefon" class = "row">Telefon</label>

                <input type="text" id="telefon" name="form.telefon" pattern="[\d\+]*">




            </div>
            <br>

            <div class="buttons-container">
                <button type = "submit" name="registrovat">Registrovat</button>
                <button type = "reset" name="vymazat">Vymazat</button>


            </div>
    </form>

</div>
</body>
</html>
