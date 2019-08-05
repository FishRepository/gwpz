<#assign ctx=request.getContextPath()/>

<#macro head title>
<head>
    <title>${title}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#nested>
</head>
</#macro>

<#macro script>
    <script src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <link href="${ctx}/css/fileinput.css" media="all" rel="stylesheet" type="text/css"/>
    <#nested>
</#macro>
