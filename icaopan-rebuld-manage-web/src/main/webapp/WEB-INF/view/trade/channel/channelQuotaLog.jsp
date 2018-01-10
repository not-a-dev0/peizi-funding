<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<init:init-js />
<html>
	<head>
		<title>通道限额</title>
		<meta name="decorator" content="default"></meta>
		<script type="text/javascript" src="${ctxStatic}/relatedSelect-js\relectedSelect-js.js"></script>
	</head>
<body>
	<div class="portlet box red">
		<div class="portlet-title">
			<div class="caption">
				<i class="fa fa-coffee"></i>通道限额日志记录
			</div>
		</div>
		<div class="portlet-body">
			<div class="table-responsive">
				<!-- 搜索框 start -->
				<div class="row">
					<div class="col-md-2">
						<c:choose>
							<c:when test="${ empty admin}">
								<div class="input-group">
									<span class="input-group-addon">资金方</span>
									<select class="form-control" name="customerId" id="customerId-search" onchange="if(this.value != '') setChannel(this.options[this.selectedIndex].value);">
										<option value="">请选择</option>
											${fns:getCustomers()}
									</select>
								</div>
							</c:when>
							<c:otherwise>
								<div class="input-group">
									<span class="input-group-addon">资金方</span>
									<select class="form-control" name="customerId" disabled = disabled>
											${fns:getCustomers()}
									</select>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-2">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon3">通道</span>
							<select class="form-control" name="channelId" id="channelId">
								<option value="">请选择</option>
								${fns:getChanelOpt()}
							</select>
						</div>
					</div>
					<div class="col-md-2">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">用户名</span> <input
								type="text" class="form-control" name="userName"
								id="userName-search" placeholder="用户名">
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-danger" onclick="reloadTableData();">
							<i class="glyphicon glyphicon-search"></i>查询
						</button>
					</div>
				</div>
				<!-- 搜索框 end -->

				<!-- table 数据展示 start -->
				<table:table id="channelTable"
					ajaxURI="${ctx}/channelQuotaLog/find"
					columnNames="userName,channelName,customerName,operateTypeStr,quotaTypeStr,quota,operateTimeStr"
					headerNames="用户名,通道名称,资金方,操作类型,限额标识,限额,操作时间"
					searchInputNames="channelId,customerId,userName" />
				<!-- table 数据展示 end-->
			</div>
		</div>
	</div>
<script>
    function setChannel(customerId){
        $.ajax({
            "type" : 'post',
            "url" : "${ctx }/channel/findByCustomerId?customerId="+customerId,
            "dataType" : "json",
            "success" : function(result) {
                var arr = [];
                for(var i = 0 ; i < result.length ;i++){
                    var data = {};
                    data["txt"] = result[i].name;
                    data["val"] = result[i].id;
                    arr.push(data);
                    data = null;
                }
                if (arr.length==1){
                    setSelectOption('channelId', arr, '-请选择-',arr[0].val);
                }else {
                    setSelectOption('channelId', arr, '-请选择-');
                }
            },"error" : function (result){
                alert("发生异常,或没权限...");
            }
        });
    }
</script>
</body>
</html>



