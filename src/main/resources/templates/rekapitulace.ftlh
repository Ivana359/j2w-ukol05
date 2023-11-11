[#ftl]
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace</title>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<div class="container">
    <div class = "basket">
        <h1>Rekapitulace registrace na letní tábor</h1>

        <div>Registrace byla vytvořena pro osobu: ${jmeno} ${prijmeni}</div>

        <h2>Souhrnné údaje:</h2>

        <div class="row">Jméno:</div>
        <span>${form.jmeno}</span>

        <div class="row">Příjmení:</div>
        <span>${form.prijmeni}</span>

        <div class="row">Datum narození:</div>
        <span>${form.datumNarozeni}</span>

        <div class="row">Pohlaví:</div>
        <span>${form.pohlavi}</span>

        <div class="row">Turnus:</div>
        <span>${form.turnus}</span>

        [#if form.email?has_content]
            <div class="row">E-mail:</div>
            <span>${form.email}</span>
        [/#if]

        [#if form.telefon?has_content]
            <div class="row">Telefon:</div>
            <span>${form.telefon}</span>
        [/#if]

        <br>
        <a href="/">Další registrace</a>
    </div>
</div>
</body>
</html>




</div>
</div>
</body>
</html>
