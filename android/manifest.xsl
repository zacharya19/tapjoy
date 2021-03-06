<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:android="http://schemas.android.com/apk/res/android">

	<xsl:param name="tapjoyAppID"></xsl:param>
	<xsl:param name="tapjoySecretKey"></xsl:param>

	<xsl:template match="meta-data[@android:name='tapjoyAppID']">
		<meta-data android:name="tapjoyAppID" android:value="{$tapjoyAppID}"/>
	</xsl:template>

	<xsl:template match="meta-data[@android:name='tapjoySecretKey']">
		<meta-data android:name="tapjoySecretKey" android:value="{$tapjoySecretKey}"/>
	</xsl:template>

	<!--	<xsl:strip-space elements="*" />-->
	<xsl:output indent="yes" />

	<xsl:template match="comment()" />

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
