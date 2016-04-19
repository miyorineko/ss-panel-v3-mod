

{include file='header.tpl'}


<main class="content">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
					<section class="content-inner">
						<div class="card">
							<div class="card-main">
								<div class="card-header">
									<div class="card-inner">
										<h1 class="card-heading">重置密码</h1>
									</div>
								</div>
								<div class="card-inner">
									<p class="text-center">
										<span class="avatar avatar-inline avatar-lg">
											<img alt="Login" src="/theme/material/images/users/avatar-001.jpg">
										</span>
									</p>
									
										
										
										<div class="form-group form-group-label">
											<div class="row">
												<div class="col-md-10 col-md-push-1">
													<label class="floating-label" for="password">密码</label>
													<input class="form-control" id="password" type="text">
												</div>
											</div>
										</div>
										
										<div class="form-group form-group-label">
											<div class="row">
												<div class="col-md-10 col-md-push-1">
													<label class="floating-label" for="repasswd">重复密码</label>
													<input class="form-control" id="repasswd" type="text">
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div class="col-md-10 col-md-push-1">
													<button id="reset" type="submit" class="btn btn-block btn-brand waves-attach waves-light">重置密码</button>
												</div>
											</div>
										</div>
										
										
									
								</div>
							</div>
						</div>
						<div class="clearfix">
							<p class="margin-no-top pull-left"><a class="btn btn-flat btn-brand waves-attach" href="/auth/login">登陆</a></p>
							<p class="margin-no-top pull-right"><a class="btn btn-flat btn-brand waves-attach" href="/auth/register">注册个帐号</a></p>
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
						
						
						
					</section>
				</div>
			</div>
		</div>
	</main>
	
{include file='footer.tpl'}


<script>
    $(document).ready(function(){
        function reset(){
            $.ajax({
                type:"POST",
                url:"/password/token/{$token}",
                dataType:"json",
                data:{
                    password: $("#password").val(),
                    repasswd: $("#repasswd").val(),
                },
                success:function(data){
                    if(data.ret){
						$("#result").modal();
                        $("#msg").html(data.msg+"  五秒后跳转。");
                        window.setTimeout("location.href='/auth/login'", 5000);
                    }else{
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error:function(jqXHR){
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误："+jqXHR.status);
                    // 在控制台输出错误信息
                    console.log(removeHTMLTag(jqXHR.responseText));
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                reset();
            }
        });
        $("#reset").click(function(){
            reset();
        });
    })
</script>



