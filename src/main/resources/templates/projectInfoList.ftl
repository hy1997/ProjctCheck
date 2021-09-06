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

<table class="table table-bordered  table-hover">
    <thead>
    <tr>
        <th>Id</th>
        <th>项目Id</th>
        <th>项目CODE</th>
        <th>项目名称</th>
        <th>视频</th>
        <th>实名制</th>
        <th>环境</th>
        <th>高支模</th>
        <th>盾构机监测</th>
        <th>车辆管理</th>
        <th>水电监测</th>
        <th>烟感监测</th>
        <th>标养室监测</th>
        <th>集成商负责人</th>
        <th>备注2</th>
        <th>问题描述</th>
        <th>原因</th>
        <th>预计修复时间</th>
    </tr>
    </thead>
    <tbody>
    <#list projectInfos as projectInfo>
        <tr>
            <td>${projectInfo.id}</td>
            <td>${projectInfo.projectId}</td>
            <#if projectInfo.projectCode??>
                <td>${projectInfo.projectCode}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.projectName??>
                <td>${projectInfo.projectName}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.videoSurveillanceInfo??>
                <td>${projectInfo.videoSurveillanceInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.realNameSurveillanceInfo??>
                <td>${projectInfo.realNameSurveillanceInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.environmentSurveillanceInfo??  >
                <td>${projectInfo.environmentSurveillanceInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.highFormworkSurveillanceInfo??>
                <td>${projectInfo.highFormworkSurveillanceInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.tbmSurveillanceInfo??>
                <td>${projectInfo.tbmSurveillanceInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.vehicleManagementInfo??>
                <td>${projectInfo.vehicleManagementInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.hydropowerMonitoringInfo??>
                <td>${projectInfo.hydropowerMonitoringInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.smokeDetectionInfo??>
                <td>${projectInfo.smokeDetectionInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.standardCuringroomMonitoringInfo??>
                <td>${projectInfo.standardCuringroomMonitoringInfo}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.integratorLeader??>
                <td>${projectInfo.integratorLeader}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.remarks??>
                <td>${projectInfo.remarks}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.problemDescription??>
                <td>${projectInfo.problemDescription}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.cause??>
                <td>${projectInfo.cause}</td>
            <#else>
                <td></td>
            </#if>
            <#if projectInfo.estimatedRepairtime??>
                <td>${projectInfo.estimatedRepairtime}</td>
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
<script type="text/javascript">
    // $(function () {
    //     $(".table tbody tr").each(function () {
    //         $(this).find("td").each(function (index, that) {
    //
    //             if (index > 1 && index < 10) {
    //                 if ($(that).text() != "") {
    //                     var a = parseInt($(that).text());
    //                     if (a == 1) {
    //                         $(that).text("正常")
    //
    //                     } else {
    //
    //                         $(that).text("异常")
    //                     }
    //                 } else {
    //                     $(that).text("异常")
    //
    //                 }
    //
    //
    //             }
    //         });
    //
    //
    //     });
    //
    //
    // });

</script>
</body>
</html>
