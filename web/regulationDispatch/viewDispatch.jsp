<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr"%>

<bean:define id="queueId" name="queue" property="externalId" />

<p>
	<html:link action="/regulationDispatch?method=viewQueue" paramId="queueId" paramName="queueId">Voltar</html:link>
</p>

<h1>Visualizar despacho </h1>

<fr:view name="dispatch">
	<fr:schema type="module.regulation.dispatch.domain.IRegulationDispatchEntry" bundle="REGULATION_DISPATCH_RESOURCES">
		<fr:slot name="reference" />
		<fr:slot name="emissionDate" />
		<fr:slot name="dispatchDescription" />
		<fr:slot name="emissor.name" />
		<fr:slot name="regulationReference" />
	</fr:schema>
	
	<layout name="tabular">
		<fr:property name="classes" value="tstyle2" />
	</layout>
</fr:view>
