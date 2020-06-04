<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<link rel="stylesheet" type="text/css" href="style.css"/>

<html>
<body>


<script>
function myFunction() {
var x = document.getElementById("imie").value;
var y = document.getElementById("przedmiot").value;
  var table = document.getElementById("nauczyciele");
  var row = table.insertRow(-1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
 cell1.innerHTML = x;
  cell2.innerHTML = y;
  cell3.innerHTML = '<td><input class="button" id="usun" type="button" value="Usuń" onclick="deleteRow(this)"/></td>';
}

function deleteRow(r) {
  var i = r.parentNode.parentNode.rowIndex;
  document.getElementById("nauczyciele").deleteRow(i);
}
</script>

<h1>Dyrekcja</h1>
<table id="dyrekcja">
      <tr>
        <th>Dyrektor</th>
		<th>Wicedyrektor</th>
      </tr>
      <xsl:for-each select="szkola/pracownicy/zarzad">
        <tr>
          <td><xsl:value-of select="dyrektor"/></td>
		  <td><xsl:value-of select="wicedyrektor"/></td>
        </tr>
      </xsl:for-each>
    </table>


	<h1>Nauczyciele</h1>
<table id="nauczyciele">
      <tr>
        <th>Nauczyciel</th>
		<th>Przedmiot</th>
		<th></th>
      </tr>
      <xsl:for-each select="szkola/pracownicy/nauczyciele/nauczyciel">
        <tr>
          <td><xsl:value-of select="imie"/>&#160;<xsl:value-of select="nazwisko"/></td>
		  <td><xsl:value-of select="przedmiot"/></td>
		  <td><input class="button" id="usun" type="button" value="Usuń" onclick="deleteRow(this)"/></td>
        </tr>
      </xsl:for-each>
    </table>
	
<br/><br/>
	<b>Dodaj nauczyciela:</b>
Imie i nazwisko:
<input type="text" id="imie"/>
Przedmiot:
<input type="text" id="przedmiot"/>&#160;
<button class="button" type="button" onclick="myFunction()">Dodaj</button>


	<h1>Klasa 1a</h1>
	<wychowawca>wychowawca: <xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1a']/imie"/>&#160;
	<xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1a']/nazwisko"/></wychowawca>
<table>
      <tr>
        <th>Uczeń</th>
		<th>Data urodzenia</th>
      </tr>
      <xsl:for-each select="szkola/uczniowie/uczen[klasa='1a']">
        <tr>
          <td><xsl:value-of select="imie"/>&#160;<xsl:value-of select="nazwisko"/></td>
		  <td><xsl:value-of select="dataurodzenia"/></td>
        </tr>
      </xsl:for-each>
    </table>

		<h1>Klasa 1b</h1>
		<wychowawca>wychowawca: <xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1b']/imie"/>&#160;
	<xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1b']/nazwisko"/></wychowawca>
<table>
      <tr>
        <th>Uczeń</th>
		<th>Data urodzenia</th>
      </tr>
      <xsl:for-each select="szkola/uczniowie/uczen[klasa='1b']">
        <tr>
          <td><xsl:value-of select="imie"/>&#160;<xsl:value-of select="nazwisko"/></td>
		  <td><xsl:value-of select="dataurodzenia"/></td>
        </tr>
      </xsl:for-each>
    </table>

		<h1>Klasa 1c</h1>
		<wychowawca>wychowawca: <xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1c']/imie"/>&#160;
	<xsl:value-of select="szkola/pracownicy/nauczyciele/nauczyciel[wychowawca='1c']/nazwisko"/></wychowawca>
<table>
      <tr>
        <th>Uczeń</th>
		<th>Data urodzenia</th>
      </tr>
      <xsl:for-each select="szkola/uczniowie/uczen[klasa='1c']">
        <tr>
          <td><xsl:value-of select="imie"/>&#160;<xsl:value-of select="nazwisko"/></td>
		  <td><xsl:value-of select="dataurodzenia"/></td>
        </tr>
      </xsl:for-each>
    </table>

	
</body>
</html>
</xsl:template>
</xsl:stylesheet>