<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  
<html xmlns="http://www.w3.org/1999/xhtml"> 
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<title>Książka</title>
	</head>

	<body bgcolor="#D3D3D3">
		<h3>Olimpia Elbląg:</h3>
		<table border="0">
			<tr bgcolor="#FFFF00">
				<th>L.p.</th>
				<th>Imie</th>
				<th>Nazwisko</th>
				<th>Miejscowość</th>
				<th>Kod pocztowy</th>
				<th>Ulica</th>
				<th>Nr domu</th>
				<th>Tel kom</th>
				<th>GG</th>
				<th>E-m@il</th>
				<th>Adres web</th>
				<th>Grupa</th>	
			</tr>

			<xsl:for-each select="ksiazka/kontakty/osoba[@grupa = 'OE']">

         
         
				<xsl:variable name="email">
					<xsl:value-of select="email"/>
				</xsl:variable>
		
				<xsl:variable name="i">
					<xsl:number value="position()" format="1" />
				</xsl:variable>
				
				<xsl:if test="$i mod 2 = 0">
					<tr bgcolor="#4E95D6">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
				</xsl:if>
				
				<xsl:if test="$i mod 2 = 1">
					<tr bgcolor="#FFFFFF">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>

		<h3>Zagłębie Sosnowiec:</h3>
		<table border="0">
			<tr bgcolor="#FF0000">
				<th>L.p.</th>
				<th>Imie</th>
				<th>Nazwisko</th>
				<th>Miejscowość</th>
				<th>Kod pocztowy</th>
				<th>Ulica</th>
				<th>Nr domu</th>
				<th>Tel kom</th>
				<th>GG</th>
				<th>E-m@il</th>
				<th>Adres web</th>
				<th>Grupa</th>
			</tr>

			<xsl:for-each select="ksiazka/kontakty/osoba[@grupa = 'ZS']">
                
				<xsl:variable name="email">
					<xsl:value-of select="email"/>
				</xsl:variable>
               
				<xsl:variable name="i">
					<xsl:number value="position()" format="1" />
				</xsl:variable>
				
				<xsl:if test="$i mod 2 = 0">
					<tr bgcolor="#FFFFFF">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
                </xsl:if>

				<xsl:if test="$i mod 2 = 1">
					<tr bgcolor="#006400">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
		
		<h3>Legia Warszawa:</h3>
		<table border="0">
			<tr bgcolor="#FF0000">
				<th>L.p.</th>
				<th>Imie</th>
				<th>Nazwisko</th>
				<th>Miejscowość</th>
				<th>Kod pocztowy</th>
				<th>Ulica</th>
				<th>Nr domu</th>
				<th>Tel kom</th>
				<th>GG</th>
				<th>E-m@il</th>
				<th>Adres web</th>
				<th>Grupa</th>     
			</tr>

			<xsl:for-each select="ksiazka/kontakty/osoba[@grupa = 'LW']">
                
				<xsl:variable name="email">
					<xsl:value-of select="email"/>
				</xsl:variable>
      
				<xsl:variable name="i">
					<xsl:number value="position()" format="1" />
				</xsl:variable>

				<xsl:if test="$i mod 2 = 0">
					<tr bgcolor="#008000">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
				</xsl:if>

				<xsl:if test="$i mod 2 = 1">
					<tr bgcolor="#FFFFFF">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@grupa"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>

		<h3>Panie z Gmailem:</h3>
		<table border="0">
			<tr bgcolor="#A0522D">
				<th>L.p.</th>
				<th>Imie</th>
				<th>Nazwisko</th>
				<th>Miejscowość</th>
				<th>Kod pocztowy</th>
				<th>Ulica</th>
				<th>Nr domu</th>
				<th>Tel kom</th>
				<th>GG</th>
				<th>E-m@il</th>
				<th>Adres web</th>
				<th>plec</th>
			</tr>      

			<xsl:variable name="email">
				<xsl:value-of select="email"/>
			</xsl:variable>

			<xsl:for-each select="ksiazka/kontakty/osoba[@plec='k' and contains(email,'@gmail.com')]">
				<xsl:variable name="i">
					<xsl:number value="position()" format="1" />
				</xsl:variable>
				
				<xsl:if test="$i mod 2 = 0">
					<tr bgcolor="#F4A460">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@plec"/></td>
					</tr>
				</xsl:if>
			
				<xsl:if test="$i mod 2 = 1">
					<tr bgcolor="#FFEFD5">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@plec"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
	
		<h3>Panowie z sumą nr telefonu i GG większą od 1 000 000 000:</h3>
        <table border="0">
			<tr bgcolor="#A0522D">
				<th>L.p.</th>
				<th>Imie</th>
				<th>Nazwisko</th>
				<th>Miejscowość</th>
				<th>Kod pocztowy</th>
				<th>Ulica</th>
				<th>Nr domu</th>
				<th>Tel kom</th>
				<th>GG</th>
				<th>E-m@il</th>
				<th>Adres web</th>
				<th>plec</th>
				<th>suma</th>
			</tr>
  

			<xsl:variable name="email">
				<xsl:value-of select="email"/>
			</xsl:variable>



			<xsl:for-each select="ksiazka/kontakty/osoba[@plec='m']">
				<xsl:sort select="result"/>	
				<xsl:variable name="num1"> 
					<xsl:value-of select="gg"/>
				</xsl:variable>

				<xsl:variable name="num2">
					<xsl:value-of select="nr_tel/tel_kom"/>
				</xsl:variable>

				<xsl:variable name="i">
					<xsl:number value="position()" format="1" />
				</xsl:variable>
	
				<xsl:variable name="result" select="$num1 + $num2" />
			
				<xsl:if test="$result &gt; 10000000">
					<xsl:if test="$i mod 2 = 0">
						<tr bgcolor="#F4A460">
							<td><xsl:number value="position()" format="1" /></td>
							<td><xsl:value-of select="imie"/></td>
							<td><xsl:value-of select="nazwisko"/></td>
							<td><xsl:value-of select="adres/miasto"/></td>
							<td><xsl:value-of select="adres/kod_pocz"/></td>
							<td><xsl:value-of select="adres/ulica"/></td>
							<td><xsl:value-of select="adres/nr_lok"/></td>
							<td><xsl:value-of select="nr_tel/tel_kom"/></td>
							<td><xsl:value-of select="gg"/></td>
							<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
							<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
							<td><xsl:value-of select="@plec"/></td>
						<td><xsl:value-of select="$result"/></td>
						</tr>
					</xsl:if>
				</xsl:if>
			
				<xsl:if test="$i mod 2 = 1">
					<tr bgcolor="#FFEFD5">
						<td><xsl:number value="position()" format="1" /></td>
						<td><xsl:value-of select="imie"/></td>
						<td><xsl:value-of select="nazwisko"/></td>
						<td><xsl:value-of select="adres/miasto"/></td>
						<td><xsl:value-of select="adres/kod_pocz"/></td>
						<td><xsl:value-of select="adres/ulica"/></td>
						<td><xsl:value-of select="adres/nr_lok"/></td>
						<td><xsl:value-of select="nr_tel/tel_kom"/></td>
						<td><xsl:value-of select="gg"/></td>
						<td><a href='mailto:{$email}'><xsl:value-of select="email" /></a></td>
						<td><a href='{url}'><xsl:value-of select="strona"/></a></td>
						<td><xsl:value-of select="@plec"/></td>
						<td><xsl:value-of select="$result"/></td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>

