<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<h1>BẢNG LƯƠNG THÁNG 11-2020</h1>
		<h3>
			Mã đơn vị <xsl:value-of select="@madv"></xsl:value-of>
		</h3>
		<h3>
			Tên đơn vị <xsl:value-of select="tendv"></xsl:value-of>
		</h3>
		<h3>
			Điện thoại<xsl:value-of select="dienthoai"></xsl:value-of>
		</h3>

		<h2>DANH SÁCH NHÂN VIÊN</h2>
		<table>
			<tr>
				<th>SỐ TT</th>
				<th>Mã NV</th>
				<th>HỌ TÊN</th>
				<th>NGÀY SINH</th>
				<th>HS LƯƠNG</th>
				<th>LƯƠNG</th>
			</tr>
			<xsl:apply-templates select="nhanvien" ></xsl:apply-templates>
		</table>

	</xsl:template>
	<xsl:template match="nhanvien">
		<tr>
			<td>
				<xsl:value-of select="position()" ></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="manv" ></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="hoten" ></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="ngaysinh" ></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="hsluong" ></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="hsluong*730000" ></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
