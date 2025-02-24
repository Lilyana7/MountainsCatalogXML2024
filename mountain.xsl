<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Каталог на планините в България</title>

                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <script>
		        function showHighMountains() {
			        document.getElementById('highMountains').style.display = 'inline';
                    document.getElementById('mediumMountains').style.display = 'none';
			        document.getElementById('lowMountains').style.display = 'none';
                };
		        function showMediumMountains() {
			        document.getElementById('highMountains').style.display = 'none';
                    document.getElementById('mediumMountains').style.display = 'inline';
			        document.getElementById('lowMountains').style.display = 'none';
                };
		        function showLowMountains() {
			        document.getElementById('highMountains').style.display = 'none';
                    document.getElementById('mediumMountains').style.display = 'none';
			        document.getElementById('lowMountains').style.display = 'inline';
                }
            </script>
            <body>
                <h1> Планини в България </h1>
                <button class="button" onclick="showHighMountains();">Високи планини</button>
                <button class="button" onclick="showMediumMountains()">Средновисоки планини</button>
                <button class="button" onclick="showLowMountains()">Ниски планини</button>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="/mountainsCatalog/highMountains">
        <div id="highMountains">
            <xsl:for-each select="/mountainsCatalog/highMountains/mountain">
                <xsl:sort select="height" data-type="number" order="descending"></xsl:sort>

                <div style="color:white;" class="highMountains">
                    <img src="images/{@id}.jpg" />
                    <p id="name">
                        <xsl:value-of select="name" />
                    </p>
                    <div id="mainInfo">
                        <p id="label">Височина</p>
                        <p>
                            <xsl:value-of select="height" />
                        </p>
                        <p id="label">Най-висок връх</p>
                        <p>
                            <xsl:value-of select="highestPeak" />
                        </p>
                    </div>
                    <div id="extraInfo">
                        <p id="label">Регион</p>
                        <p>
                            <xsl:value-of select="region" />
                        </p>
                        <p id="label">Вид</p>
                        <p>
                            <xsl:value-of select="type" />
                        </p>
                        <p id="label">Описание</p>
                        <p>
                            <xsl:value-of select="description" />
                        </p>
                    </div>
                    <div id="online">
                        <p id="label">Сайт</p>
                        <a href="{site/@href}">
                            <xsl:value-of select="site" />
                        </a>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>   
    <xsl:template match="/mountainsCatalog/mediumMountains">
        <div id="mediumMountains" style="display:none;">
            <xsl:for-each select="/mountainsCatalog/mediumMountains/mountain">
                <xsl:sort select="height" data-type="number" order="descending"></xsl:sort>

                <div style="color:white;" class="mediumMountains">
                    <img src="images/{@id}.jpg" />
                    <p id="name">
                        <xsl:value-of select="name" />
                    </p>
                    <div id="mainInfo">
                        <p id="label">Височина</p>
                        <p>
                            <xsl:value-of select="height" />
                        </p>
                        <p id="label">Най-висок връх</p>
                        <p>
                            <xsl:value-of select="highestPeak" />
                        </p>
                    </div>
                    <div id="extraInfo">
                        <p id="label">Регион</p>
                        <p>
                            <xsl:value-of select="region" />
                        </p>
                        <p id="label">Вид</p>
                        <p>
                            <xsl:value-of select="type" />
                        </p>
                        <p id="label">Описание</p>
                        <p>
                            <xsl:value-of select="description" />
                        </p>
                    </div>
                    <div id="online">
                        <p id="label">Сайт</p>
                        <a href="{site/@href}">
                            <xsl:value-of select="site" />
                        </a>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
    <xsl:template match="/mountainsCatalog/lowMountains">
        <div id="lowMountains" style="display:none;">
            <xsl:for-each select="/mountainsCatalog/lowMountains/mountain">
                <xsl:sort select="height" data-type="number" order="descending"></xsl:sort>
                <div style="color:white;" class="lowMountains">
                    <img src="images/{@id}.jpg" />
                    <p id="name">
                        <xsl:value-of select="name" />
                    </p>
                <div id="mainInfo">
                        <p id="label">Височина</p>
                        <p>
                            <xsl:value-of select="height" />
                        </p>
                        <p id="label">Най-висок връх</p>
                        <p>
                            <xsl:value-of select="highestPeak" />
                        </p>
                    </div>
                    <div id="extraInfo">
                        <p id="label">Регион</p>
                        <p>
                            <xsl:value-of select="region" />
                        </p>
                        <p id="label">Вид</p>
                        <p>
                            <xsl:value-of select="type" />
                        </p>
                        <p id="label">Описание</p>
                        <p>
                            <xsl:value-of select="description" />
                        </p>
                    </div>
                    <div id="online">
                        <p id="label">Сайт</p>
                        <a href="{site/@href}">
                            <xsl:value-of select="site" />
                        </a>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>