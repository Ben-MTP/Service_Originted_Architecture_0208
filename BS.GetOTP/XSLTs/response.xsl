<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:ns0="http://vasplatform.mobifone.vn"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/NEOFormat.xsd"/>
        <oracle-xsl-mapper:rootElement name="GetOTPResponse" namespace="http://vasplatform.mobifone.vn"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/NEOFormat.xsd"/>
        <oracle-xsl-mapper:rootElement name="response" namespace="http://vasplatform.mobifone.vn"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [SAT JAN 18 18:30:43 ICT 2020].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:response>
      <xsl:choose>
        <xsl:when test='/ns0:GetOTPResponse/ns0:status = "1"'>
          <ns0:STATUS>
            <xsl:value-of select="'1'"/>
          </ns0:STATUS>
          <ns0:STATUS_MESSAGE>
            <xsl:value-of select="'SUCCESS'"/>
          </ns0:STATUS_MESSAGE>
          <ns0:Parameters>
            <ns0:Parameter>
              <ns0:name>
                <xsl:value-of select="'OTP'"/>
              </ns0:name>
              <ns0:value>
                <xsl:value-of select="/ns0:GetOTPResponse/ns0:otp"/>
              </ns0:value>
            </ns0:Parameter>
          </ns0:Parameters>
        </xsl:when>
        <xsl:otherwise>
          <ns0:STATUS>
            <xsl:value-of select="/ns0:GetOTPResponse/ns0:status"/>
          </ns0:STATUS>
          <ns0:STATUS_MESSAGE>
            <xsl:value-of select="/ns0:GetOTPResponse/ns0:message"/>
          </ns0:STATUS_MESSAGE>
        </xsl:otherwise>
      </xsl:choose>
    </ns0:response>
  </xsl:template>
</xsl:stylesheet>
