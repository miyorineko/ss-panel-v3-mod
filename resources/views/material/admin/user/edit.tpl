

{include file='admin/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">用户编辑 #{$user->id}</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="email">邮箱</label>
									<input class="form-control" id="email" type="email" value="{$user->email}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="pass">密码(不修改请留空)</label>
									<input class="form-control" id="pass" type="password">
								</div>
								
								<div class="form-group form-group-label">
									<div class="checkbox switch">
										<label for="is_admin">
											<input {if $user->is_admin==1}checked{/if} class="access-hide" id="is_admin" type="checkbox"><span class="switch-toggle"></span>是否管理员
										</label>
									</div>
								</div>
								
								<div class="form-group form-group-label">
									<div class="checkbox switch">
										<label for="enable">
											<input {if $user->enable==1}checked{/if} class="access-hide" id="enable" type="checkbox"><span class="switch-toggle"></span>用户启用
										</label>
									</div>
								</div>
								
								
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="port">连接端口</label>
									<input class="form-control" id="port" type="text" value="{$user->port}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="passwd">连接密码</label>
									<input class="form-control" id="passwd" type="text" value="{$user->passwd}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="method">自定义加密</label>
									<input class="form-control" id="method" type="text" value="{$user->method}">
								</div>
							</div>
						</div>
					</div>	
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="transfer_enable">总流量（B）</label>
									<input class="form-control" id="transfer_enable" type="text" value="{$user->transfer_enable}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="usedTraffic">已用流量（B）</label>
									<input class="form-control" id="usedTraffic" type="text" value="{$user->u+$user->d}" readonly>
								</div>
							</div>
						</div>
					</div>	
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="invite_num">可用邀请数量</label>
									<input class="form-control" id="invite_num" type="text" value="{$user->invite_num}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="ref_by">邀请人ID</label>
									<input class="form-control" id="ref_by" type="text" value="{$user->ref_by}" readonly>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="form-group form-group-label">
									<label class="floating-label" for="class">用户级别（用户只能访问到小于等于这个数字的节点）</label>
									<input class="form-control" id="class" type="text" value="{$user->class}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="class_expire">用户等级过期时间(不过期就请不要动)</label>
									<input class="form-control" id="class_expire" type="text" value="{$user->class_expire}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="expire_in">用户账户过期时间(不过期就请不要动)</label>
									<input class="form-control" id="expire_in" type="text" value="{$user->expire_in}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="node_speedlimit">用户限速，用户在每个节点所享受到的速度(0 为不限制)(Mbps)</label>
									<input class="form-control" id="node_speedlimit" type="text" value="{$user->node_speedlimit}">
								</div>
								
								<div class="form-group form-group-label">
									<label class="floating-label" for="node_connector">用户同时连接 IP 数(0 为不限制)</label>
									<input class="form-control" id="node_connector" type="text" value="{$user->node_connector}">
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								
								<div class="form-group">
									<div class="row">
										<div class="col-md-10 col-md-push-1">
											<button id="submit" type="submit" class="btn btn-block btn-brand waves-attach waves-light">修改</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div aria-hidden="true" class="modal fade" id="result" role="dialog" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">操作结果</h2>
								</div>
								<div class="modal-inner">
									<p id="msg"></p>
								</div>
								<div class="modal-footer">
									<button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" type="button">知道了</button></p>
								</div>
							</div>
						</div>
					</div>
			</div>
			
			
			
		</div>
	</main>

	
	
	
	






{include file='admin/footer.tpl'}


<script>
	//document.getElementById("class_expire").value="{$user->class_expire}";
    $(document).ready(function () {
        function submit() {
			if(document.getElementById('is_admin').checked)
			{
				var is_admin=1;
			}
			else
			{
				var is_admin=0;
			}
			
			if(document.getElementById('enable').checked)
			{
				var enable=1;
			}
			else
			{
				var enable=0;
			}
            $.ajax({
                type: "PUT",
                url: "/admin/user/{$user->id}",
                dataType: "json",
                data: {
                    email: $("#email").val(),
                    pass: $("#pass").val(),
                    port: $("#port").val(),
                    passwd: $("#passwd").val(),
                    transfer_enable: $("#transfer_enable").val(),
                    invite_num: $("#invite_num").val(),
					node_speedlimit: $("#node_speedlimit").val(),
                    method: $("#method").val(),
                    enable: enable,
                    is_admin: is_admin,
                    ref_by: $("#ref_by").val(),
					class: $("#class").val(),
					class_expire: $("#class_expire").val(),
					expire_in: $("#expire_in").val(),
					node_connector: $("#node_connector").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
                        $("#msg").html(data.msg+"  五秒后跳转。");
                        window.setTimeout("location.href='/admin/user'", 5000);
                    } else {
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html(data.msg+"  发生了错误。");
                }
            });
        }

        $("html").keydown(function (event) {
            if (event.keyCode == 13) {
                login();
            }
        });
        $("#submit").click(function () {
            submit();
        });

    })
</script>






