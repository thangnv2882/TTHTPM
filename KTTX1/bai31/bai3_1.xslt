<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="bai3_1.css" />
			</head>
			<body>
				<h1 align="center">BẢNG LƯƠNG THÁNG 11-2020</h1>
				<h3>
					Mã đơn vị: <xsl:value-of select="congty/donvi/@madv"></xsl:value-of>
				</h3>
				<h3>
					Tên đơn vị: <xsl:value-of select="congty/donvi/tendv"></xsl:value-of>
				</h3>
				<h3>
					Điện thoại: <xsl:value-of select="congty/donvi/dienthoai"></xsl:value-of>
				</h3>

				<h2>DANH SÁCH NHÂN VIÊN</h2>
				<table border="2" cellspacing="0" width="100%">
					<tr class="tieude">
						<th>SỐ TT</th>
						<th>Mã NV</th>
						<th>HỌ TÊN</th>
						<th>NGÀY SINH</th>
						<th>HS LƯƠNG</th>
						<th>LƯƠNG</th>
					</tr>
					<!--<xsl:apply-templates select="congty/donvi/nhanvien[hsluong>3]" ></xsl:apply-templates>-->
					<xsl:for-each select="congty/donvi/nhanvien">
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
					</xsl:for-each>

					</table>
					<h1 align="right">THỨ TRƯỞNG ĐƠN VỊ </h1>
				</body>
		</html>


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
