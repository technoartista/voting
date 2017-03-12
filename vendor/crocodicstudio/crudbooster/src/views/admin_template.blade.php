<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ ($page_title)?CRUDBooster::getSetting('appname').': '.strip_tags($page_title):"Admin Area" }}</title>
	<meta name="csrf-token" content="{{ csrf_token() }}" />
	<meta name='generator' content='CRUDBooster 5.3'/>
    <meta name='robots' content='noindex,nofollow'/>
    <link rel="shortcut icon" href="{{ CRUDBooster::getSetting('favicon')?asset(CRUDBooster::getSetting('favicon')):asset('vendor/crudbooster/assets/logo_crudbooster.png') }}">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    
    @include('crudbooster::admin_template_plugins')
    
    <!-- Theme style -->
    <link href="{{ asset("vendor/crudbooster/assets/adminlte/dist/css/AdminLTE.min.css")}}" rel="stylesheet" type="text/css" />    
    <link href="{{ asset("vendor/crudbooster/assets/adminlte/dist/css/skins/_all-skins.min.css")}}" rel="stylesheet" type="text/css" />

    <!-- support rtl-->
    @if (App::getLocale() == 'ar')
        <link rel="stylesheet" href="//cdn.rawgit.com/morteza/bootstrap-rtl/v3.3.4/dist/css/bootstrap-rtl.min.css">
        <link href="{{ asset("vendor/crudbooster/assets/rtl.css")}}" rel="stylesheet" type="text/css" />
    @endif

    <!-- load css -->
    <style type="text/css">
        @if($style_css)
            {!! $style_css !!}
        @endif
    </style>
    @if($load_css)
        @foreach($load_css as $css)
            <link href="{{$css}}" rel="stylesheet" type="text/css" />
        @endforeach
    @endif

    <!-- load js -->
    <script type="text/javascript">
      var site_url = "{{url('/')}}" ;
      @if($script_js)
        {!! $script_js !!}
      @endif 
    </script>
    @if($load_js)
      @foreach($load_js as $js)
        <script src="{{$js}}"></script>
      @endforeach
    @endif
    <style type="text/css">
        .dropdown-menu-action {left:-130%;}
        .btn-group-action .btn-action {cursor: default}
        #box-header-module {box-shadow:10px 10px 10px #dddddd;}
        .sub-module-tab li {background: #F9F9F9;cursor:pointer;}
        .sub-module-tab li.active {background: #ffffff;box-shadow: 0px -5px 10px #cccccc}
        .nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {border:none;}
        .nav-tabs>li>a {border:none;}                
        .breadcrumb {
            margin:0 0 0 0;
            padding:0 0 0 0;
        }
        .form-group > label:first-child {display: block}
        
    </style>
</head>
<body class="<?php echo (Session::get('theme_color'))?:'skin-blue'?>">
<div id='app' class="wrapper">    

    <!-- Header -->
    @include('crudbooster::header')

    <!-- Sidebar -->
    @include('crudbooster::sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <section class="content-header">
          <?php 
            $module = CRUDBooster::getCurrentModule();
          ?>
          @if($module)
          <h1>
            <i class='{{$module->icon}}'></i>  {{($page_title)?:$module->name}} &nbsp;&nbsp;
            
            <!--START BUTTON -->         
                                        
            @if(CRUDBooster::getCurrentMethod() == 'getIndex')
            @if($button_show)
            <a href="{{ CRUDBooster::mainpath().'?'.http_build_query(Request::all()) }}" id='btn_show_data' class="btn btn-sm btn-primary" title="{{trans('crudbooster.action_show_data')}}">
              <i class="fa fa-table"></i> {{trans('crudbooster.action_show_data')}}
            </a>
            @endif

            @if($button_add && CRUDBooster::isCreate())                          
            <a href="{{ CRUDBooster::mainpath('add').'?return_url='.urlencode(Request::fullUrl()).'&parent_id='.g('parent_id').'&parent_field='.$parent_field }}" id='btn_add_new_data' class="btn btn-sm btn-success" title="{{trans('crudbooster.action_add_data')}}">
              <i class="fa fa-plus-circle"></i> {{trans('crudbooster.action_add_data')}}
            </a>
            @endif                          
            @endif

              
            @if($button_export)
            <a href="javascript:void(0)" id='btn_export_data' data-url-parameter='{{$build_query}}' title='Export Data' class="btn btn-sm btn-primary btn-export-data">
              <i class="fa fa-upload"></i> {{trans("crudbooster.button_export")}}
            </a>
            @endif

            @if($button_import)
            <a href="{{ CRUDBooster::mainpath('import-data') }}" id='btn_import_data' data-url-parameter='{{$build_query}}' title='Import Data' class="btn btn-sm btn-primary btn-import-data">
              <i class="fa fa-download"></i> {{trans("crudbooster.button_import")}}
            </a>
            @endif

            <!--ADD ACTIon-->
             @if(count($index_button))                          
               
                    @foreach($index_button as $ib)
                     <a href='{{$ib["url"]}}' id='{{str_slug($ib["label"])}}' class='btn {{($ib['color'])?'btn-'.$ib['color']:'btn-primary'}} btn-sm' 
                      @if($ib['onClick']) onClick='return {{$ib["onClick"]}}' @endif
                      @if($ib['onMouseOever']) onMouseOever='return {{$ib["onMouseOever"]}}' @endif
                      @if($ib['onMoueseOut']) onMoueseOut='return {{$ib["onMoueseOut"]}}' @endif
                      @if($ib['onKeyDown']) onKeyDown='return {{$ib["onKeyDown"]}}' @endif
                      @if($ib['onLoad']) onLoad='return {{$ib["onLoad"]}}' @endif
                      >
                        <i class='{{$ib["icon"]}}'></i> {{$ib["label"]}}
                      </a>
                    @endforeach                                                          
            @endif
            <!-- END BUTTON -->
          </h1>


          <ol class="breadcrumb">
            <li><a href="{{CRUDBooster::adminPath()}}"><i class="fa fa-dashboard"></i> {{ trans('crudbooster.home') }}</a></li>
            <li class="active">{{$module->name}}</li>
          </ol>
          @else
          <h1>{{CRUDBooster::getSetting('appname')}} <small>Information</small></h1>
          @endif
        </section>	
<section id="content_section" class="content">
            <!-- Your Page Content Here -->
            	   
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">    
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>


    <script type="text/javascript">
        $(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(document).ajaxStart(function() {
                $('.btn-save-statistic').html("<i class='fa fa-spin fa-spinner'></i>");
            })
            $(document).ajaxStop(function() {
                $('.btn-save-statistic').html("<i class='fa fa-save'></i> Auto Save Ready");
            })

            $('.btn-show-sidebar').click(function(e)  {
                e.stopPropagation();
            })
            $('html,body').click(function() {
                $('.control-sidebar').removeClass('control-sidebar-open');
            })
        })
    </script>
    <style type="text/css">
        .control-sidebar ul {
            padding:0 0 0 0;
            margin:0 0 0 0;            
            list-style-type:none;
        }
        .control-sidebar ul li {
            text-align: center;
            padding: 10px;            
            border-bottom: 1px solid #555555;
        }
        .control-sidebar ul li:hover {
            background: #555555;
        }
        .control-sidebar ul li .title {
            text-align: center;
            color: #ffffff;            
        }
        .control-sidebar ul li img {
            width: 100%;            
        }

        ::-webkit-scrollbar {
            width: 5px;
            height: 5px;
        }
         
        ::-webkit-scrollbar-track {            
            background: #000000;
        }
         
        ::-webkit-scrollbar-thumb {
            background: #333333;          
        }
    </style>

	<!-- ADDITION FUNCTION FOR BUTTON -->
	<script type="text/javascript">
        var id_cms_statistics = '1';

        function addWidget(id_cms_statistics,area,component) {      
            var id = new Date().getTime();
            $('#'+area).append("<div id='"+id+"' class='area-loading'><i class='fa fa-spin fa-spinner'></i></div>");

            var sorting = $('#'+area+' .border-box').length;             
            $.post("http://localhost/voting/public/admin/statistic_builder/add-component",{component_name:component,id_cms_statistics:id_cms_statistics,sorting:sorting,area:area},function(response) {
                $('#'+area).append(response.layout);   
                $('#'+id).remove();                
            })
        }

	</script>
	<!--END HERE-->


	<!-- jQuery UI 1.11.4 -->
    <style type="text/css">
        .sort-highlight {
            border:3px dashed #cccccc;                    
        }
        .layout-grid {
            border:1px dashed #cccccc;
            min-height: 150px;
        }
        .layout-grid + .layout-grid {
            border-left:1px dashed transparent;            
        }
        .border-box {        	
        	position: relative;        	
        }
        .border-box .action {        	
        	font-size: 20px;
        	display: none;
        	text-align: center;
        	display: none;
        	padding:3px 5px 3px 5px;
        	background:#DD4B39;
        	color:#ffffff;
        	width: 70px;
        	-webkit-border-bottom-right-radius: 5px;
			-webkit-border-bottom-left-radius: 5px;
			-moz-border-radius-bottomright: 5px;
			-moz-border-radius-bottomleft: 5px;
			border-bottom-right-radius: 5px;
			border-bottom-left-radius: 5px;
			position: absolute;
			margin-top: -20px;			
			right: 0;
			z-index: 999;
			opacity: 0.8;	
        }
        .border-box .action a {
        	color: #ffffff;
        }
        
        .border-box:hover {
        	/*border:2px dotted #BC3F30;*/
        }
        
                .border-box:hover .action {
        	display: block;
        }
        .panel-heading, .inner-box, .box-header, .btn-add-widget {
            cursor: move;
        }
                
        .connectedSortable {
        	position: relative;
        }
        .area-loading {        
        	position: relative;	
        	width: 100%;  
        	height: 130px;      	
        	background: #dedede;
        	border: 4px dashed #cccccc;
        	font-size: 50px;
        	color: #aaaaaa;
        	margin-bottom: 20px;
        }
        .area-loading i {        	
        	position: absolute;
        	left:45%;
        	top:30%;        	
        	transform: translate(-50%, -50%);        	      
        }
    </style>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script type="text/javascript">
    $(function() {             	       

        var cloneSidebar = $('.control-sidebar').clone();

                    createSortable();        
        
        function createSortable() {
            $(".connectedSortable").sortable({
                placeholder: "sort-highlight",
                connectWith: ".connectedSortable",
                handle: ".panel-heading, .inner-box, .box-header, .btn-add-widget",            
                forcePlaceholderSize: true,
                zIndex: 999999,
                stop: function(event, ui) {
                    console.log(ui.item.attr('class'));
                    var className = ui.item.attr('class');
                    var idName = ui.item.attr('id');
                    if(className == 'button-widget-area') {
                        var areaname = $('#'+idName).parent('.connectedSortable').attr('id');
                        var component = $('#'+idName+' > a').data('component');
                        console.log(areaname);
                        $('#'+idName).remove();
                        addWidget(id_cms_statistics,areaname,component);                        
                        $('.control-sidebar').html(cloneSidebar);
                        cloneSidebar = $('.control-sidebar').clone(); 
                         
                        createSortable();             
                    }
                },
                update: function(event, ui){
                    if(ui.sender){
                        var componentID = ui.item.attr('id');
                        var areaname = $('#'+componentID).parent('.connectedSortable').attr("id");
                        var index = $('#'+componentID).index();

                        
                        $.post("http://localhost/voting/public/admin/statistic_builder/update-area-component",{componentid:componentID,sorting:index,areaname:areaname},function(response) {
                            
                        })
                    }
                }
              });
        }
           
    })
     
    </script>

    <script type="text/javascript">
        $(function() {
        	
        	$('.connectedSortable').each(function() {
        		var areaname = $(this).attr('id');
        		
        		$.get("http://localhost/voting/public/admin/statistic_builder/list-component/"+id_cms_statistics+"/"+areaname,function(response) {       		
        			if(response.components) {
        				
        				$.each(response.components,function(i,obj) {
        					$('#'+areaname).append("<div id='area-loading-"+obj.componentID+"' class='area-loading'><i class='fa fa-spin fa-spinner'></i></div>");
        					$.get("http://localhost/voting/public/admin/statistic_builder/view-component/"+obj.componentID,function(view) {
        						console.log('View For CID '+view.componentID);
        						$('#area-loading-'+obj.componentID).remove();
        						$('#'+areaname).append(view.layout);
        						
        					})
        				})        				
        			}       			
        		})
        	})
        	       
            
            $(document).on('click','.btn-delete-component',function() {
            	var componentID = $(this).data('componentid');
            	var $this = $(this);

            	swal({
				  title: "Are you sure?",
				  text: "You will not be able to recover this widget !",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText: "Yes",
				  closeOnConfirm: true
				},
				function(){
				  	
	            	$.get("http://localhost/voting/public/admin/statistic_builder/delete-component/"+componentID,function() {
	            		$this.parents('.border-box').remove();
	            		
	            	});
				});
            	
            })
            $(document).on('click','.btn-edit-component',function() {
				var componentID = $(this).data('componentid');
				var name        = $(this).data('name');

            	$('#modal-statistic .modal-title').text(name);
            	$('#modal-statistic .modal-body').html("<i class='fa fa-spin fa-spinner'></i> Please wait loading...");
            	$('#modal-statistic').modal('show');

            	$.get("http://localhost/voting/public/admin/statistic_builder/edit-component/"+componentID,function(response) {
                    $('#modal-statistic .modal-body').html(response);
                })
            })

            $('#modal-statistic .btn-submit').click(function() {         
                
                $('#modal-statistic form .has-error').removeClass('has-error');

                var required_input = [];
                $('#modal-statistic form').find('input[required],textarea[required],select[required]').each(function() {
                    var $input = $(this);
                    var $form_group = $input.parent('.form-group');
                    var value = $input.val();

                    if(value == '') {
                        required_input.push($input.attr('name'));
                    }
                })    

                if(required_input.length) {  
                    setTimeout(function() {
                        $.each(required_input,function(i,name) {
                            $('#modal-statistic form').find('input[name="'+name+'"],textarea[name="'+name+'"],select[name="'+name+'"]').parent('.form-group').addClass('has-error');
                        })
                    },200);                  
                    
                    return false;
                }

            	var $button = $(this).text('Saving...').addClass('disabled');
            	
            	$.ajax({
            		data:$('#modal-statistic form').serialize(),
            		type:'POST',
            		url:"http://localhost/voting/public/admin/statistic_builder/save-component",
            		success:function() {
            			
            			$button.removeClass('disabled').text('Save Changes');
            			$('#modal-statistic').modal('hide');
            			window.location.href = "http://localhost/voting/public/admin/statistic_builder/builder/1";
            		},
            		error:function() {
            			alert('Sorry something went wrong !');
            			$button.removeClass('disabled').text('Save Changes');
            		}
            	})
            })
        })
    </script>

    <div id="modal-statistic" class="modal fade" tabindex="-1" role="dialog">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <h4 class="modal-title">Modal title</h4>
	      </div>
	      <div class="modal-body">
	        <p>One fine body…</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn-submit btn btn-primary" data-loading-text="Saving..." autocomplete="off">Save changes</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

    <div id="statistic-area">


        <div class="statistic-row row">
            <div id="area1" class="col-sm-3 connectedSortable ui-sortable">            	

            <div id="f1494007625dc4651061825120f0847d" class="border-box">
	                	                		           
	<div class="small-box bg-green	">
	    <div class="inner inner-box">
	      <h3>1	</h3>
	      <p>ADMK VOTE	</p>
	    </div>
	    <div class="icon">
	      <i class="ion user	"></i>
	    </div>
	    <a href="technoartista.com&#9;" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
	</div>

	<div class="action pull-right">

    </div>
</div>
	</div>
            <div id="area2" class="col-sm-3 connectedSortable ui-sortable">
               
            <div id="ce785f23efbd8da059c2caf6c8fd91aa" class="border-box">
	                	                		           
	<div class="small-box bg-yellow	">
	    <div class="inner inner-box">
	      <h3>0	</h3>
	      <p>DMK VOTE	</p>
	    </div>
	    <div class="icon">
	      <i class="ion user	"></i>
	    </div>
	    <a href="technoartista.com&#9;" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
	</div>

	<div class="action pull-right">

    </div>
</div>
	</div>
            <div id="area3" class="col-sm-3 connectedSortable ui-sortable">

            </div>
            <div id="area4" class="col-sm-3 connectedSortable ui-sortable">
            	
            </div>            
        </div>

        <div class="statistic-row row">
                <div id="area5" class="col-sm-12 connectedSortable ui-sortable">
 
                </div>
        </div>
    
    </div><!--END STATISTIC AREA-->
	
        </section>





























		

        <!-- Main content -->
        <section id='content_section' class="content">

        	@if(@$alerts)
        		@foreach(@$alerts as $alert)
        			<div class='callout callout-{{$alert[type]}}'>        				
        					{!! $alert['message'] !!}
        			</div>
        		@endforeach
        	@endif


			@if (Session::get('message')!='')
			<div class='alert alert-{{ Session::get("message_type") }}'>
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<h4><i class="icon fa fa-info"></i> {{ trans("crudbooster.alert_".Session::get("message_type")) }}</h4>
				{!!Session::get('message')!!}
			</div>
			@endif



            <!-- Your Page Content Here -->
            @yield('content')
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

    <!-- Footer -->
    @include('crudbooster::footer')

</div><!-- ./wrapper -->

<!-- Optionally, you can add Slimscroll and FastClick plugins.
      Both of these plugins are recommended to enhance the
      user experience -->
</body>
</html>
