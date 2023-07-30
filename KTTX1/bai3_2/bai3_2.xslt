<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<body>
			<h1>Bảng lương tháng</h1>
			<xsl:for-each select="DS/congty">
				<div>
					<h2>
						Tên công ty: <xsl:value-of select="@TenCT"/>
					</h2>
					<h2>
						Tên phòng: <xsl:value-of select="donvi/tendv"/>
					</h2>
					<table>
						<tr>
							<th>Số TT</th>
							<th>HỌ TÊN</th>
							<th>NGÀY SINH</th>
							<th>NGÀY CÔNG</th>
							<th>LƯƠNG</th>
						</tr>
						<xsl:apply-templates select="donvi/nhanvien"></xsl:apply-templates>
					</table>
				</div>
			</xsl:for-each>
		</body>
    </xsl:template>
	<xsl:template match="nhanvien">
		<tr>
			<td>
				<xsl:value-of select="position()"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="hoten"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="ngaysinh"></xsl:value-of>
			</td>
			<td class="so">
				<xsl:value-of select="ngaycong"></xsl:value-of>
			</td>
			<td class="so">
				<xsl:choose>
					<xsl:when test="ngaycong&lt;=20">
						<xsl:value-of select="ngaycong * 150000"/>
					</xsl:when>
					<xsl:when test="ngaycong&lt;=25 and ngaycong > 20">
						<xsl:value-of select="20*150000 + (ngaycong - 20)*200000"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="20*150000 + 5*200000 + (ngaycong - 25) * 250000"/>

					</xsl:otherwise>
				</xsl:choose>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
