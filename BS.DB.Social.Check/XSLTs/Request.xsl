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
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CallVasPlatform"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/NEOFormat.xsd"/>
        <oracle-xsl-mapper:rootElement name="request" namespace="http://vasplatform.mobifone.vn"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/CallVasPlatform_sp.xsd"/>
        <oracle-xsl-mapper:rootElement name="InputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CallVasPlatform"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [FRI NOV 29 11:04:19 ICT 2019].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:InputParameters>
      <tns:P_SERVICE_ID>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'SERVICE_ID']/ns0:value"/>
      </tns:P_SERVICE_ID>
      <tns:P_PKG_ID>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'PKG_ID']/ns0:value"/>
      </tns:P_PKG_ID>
      <tns:P_SERVICE_CMD_ID>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'SERVICE_CMD_ID']/ns0:value"/>
      </tns:P_SERVICE_CMD_ID>
      <tns:P_CHANNEL>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'CHANNEL']/ns0:value"/>
      </tns:P_CHANNEL>
      <tns:P_MSISDN>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'MSISDN']/ns0:value"/>
      </tns:P_MSISDN>
      <tns:P_SUB_ID>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'SUB_ID']/ns0:value"/>
      </tns:P_SUB_ID>
      <tns:P_TYPE>
        <xsl:value-of select="/ns0:request/ns0:Parameters/ns0:Parameter[ns0:name = 'TYPE']/ns0:value"/>
      </tns:P_TYPE>
    </tns:InputParameters>
  </xsl:template>
</xsl:stylesheet>
