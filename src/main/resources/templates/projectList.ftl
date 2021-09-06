<html>
<head>
    <title>项目列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
    <button id="checkProject"  type="button" class="btn btn-default">检测接口</button>
</div>
<table   style="width:1500px;" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>Id</th>
        <th>项目CODE</th>
        <th>项目名称</th>
        <th>视频监控接口检测</th>
        <th>实名制接口检测</th>
        <th>环境接口检测</th>
        <th>高支模接口检测</th>
        <th>盾构机接口检测</th>
        <th>车辆管理接口检测</th>
        <th>水电接口检测</th>
        <th>烟感接口检测</th>
        <th>标养室接口检测</th>
        <th>所属公司</th>
        <th>集成商</th>
        <th>合同状态</th>
        <th>付款状态</th>
        <th>安装情况</th>
        <th>安装时间</th>
        <th>问题说明</th>
    </tr>

    </thead>
<tbody>

<#list projects as project>
    <tr>
        <td>${project.id}</td>
        <#if project.projectCode??>
            <td>${project.projectCode}</td>
        <#else>
            <td></td>
        </#if>

        <#if project.projectName??>
            <td>${project.projectName}</td>
        <#else>
            <td></td>
        </#if>

        <#if project.videoSurveillanceInfo??  &&  project.videoSurveillanceInfo == "1" >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.realNameSurveillance??  &&  project.realNameSurveillance=="1">
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.environmentSurveillance??  && project.environmentSurveillance=="1">
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.highFormworkSurveillance?? && project.highFormworkSurveillance=="1" >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.tbmSurveillance?? && project.tbmSurveillance=="1" >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.vehicleManagement??   && project.vehicleManagement=="1" >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.hydropowerMonitoring??  && project.hydropowerMonitoring=="1" >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.smokeDetection??  && project.smokeDetection=="1"  >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.standardCuringroomMonitoring?? && project.standardCuringroomMonitoring=="1"  >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.affiliatedCompany??>
            <td>${project.affiliatedCompany}</td>
        <#else>
            <td></td>
        </#if>
        <#if project.integrator??>
            <td>${project.integrator}</td>
        <#else>
            <td></td>
        </#if>
        <#if project.contractStatus?? && project.contractStatus=="1"  >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.paymentStatus??  && project.paymentStatus=="1"   >
            <td>是</td>
        <#else>
            <td>否</td>
        </#if>
        <#if project.installation??>
            <td>${project.installation}</td>
        <#else>
            <td></td>
        </#if>
        <#if project.installationTime??>
            <td>${project.installationTime}</td>
        <#else>
            <td></td>
        </#if>
        <#if project.problemDescription??>
            <td>${project.problemDescription}</td>
        <#else>
            <td></td>
        </#if>
    </tr>
</#list>

</tbody>
</table>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
<script>
    $("#checkProject").click(function () {
        $.post("checkProject",null,null);
        alert("请求成功");
    })
</script>
</body>
</html>
