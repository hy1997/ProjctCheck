<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>添加项目</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h2  style="text-align:center;">添加项目信息</h2>
<form class="form-horizontal form-bordered  form-row-stripped createform" style="margin:auto;width:60%;" id="addProject" name="frmLogin" method="post">
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">项目编号：</label>
        <div class="col-md-9">
            <input type="text" class=" form-control" name="projectCode">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">项目名称：</label>
        <div class="col-md-9">
            <input type="text" class=" form-control" name="projectName">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">视频监控接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="videoSurveillance">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">实名制接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="realNameSurveillance">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">环境接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="environmentSurveillance">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">高支模接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="highFormworkSurveillance">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">盾构机接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="tbmSurveillance">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">车辆管理接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="vehicleManagement">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">水电接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="hydropowerMonitoring">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">烟感接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="smokeDetection">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">标养室接口检测：</label>
        <div class="col-md-9">
            <select class="form-control" name="standardCuringroomMonitoring">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">所属公司：</label>
        <div class="col-md-9">
            <select class="form-control" name="affiliatedCompany">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">集成商：</label>
        <div class="col-md-9">
            <input type="text" class="form-control" name="integrator">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">合同签状态：</label>
        <div class="col-md-9">
            <select class="form-control" name="contractStatus">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>



    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">付款状态：</label>
        <div class="col-md-9">
            <select class="form-control" name="paymentStatus">
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">安装情况：</label>
        <div class="col-md-9">
            <input type="text" class="form-control" name="installation">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">安装时间：</label>
        <div class="col-md-9">
            <input type="text" class="form-control" name="installationTime">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-3" for="categoryname">问题说明：</label>
        <div class="col-md-9">
            <input type="text" class="form-control" name="problemDescription">
        </div>
    </div>

    <div class="form-actions form-bottom">
        <div class="col-md-offset-3 col-md-9">
            <a  href="/project/add" class="btn btn-primary"  id="addSub"     >提 交</a>
        </div>
    </div>
</form>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script>
    $("#addSub").click(function () {
        $.ajax({
            url: "/project/add",
            type: "POST",
            data: $("#addProject").serialize(),//核心代码，form表单序列化
            dataType: "JSON",
            success: function (data) {
                if (data == 1) {
                    alert('保存成功');
                } else {
                    alert('保存失败');
                }
            }
        });
        return false;
    })
</script>
<style>
    label {
        max-width: 300px;
    }
</style>
</body>
</html>
