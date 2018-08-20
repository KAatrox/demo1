<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>产品编辑</title>


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>

</head>
<body>


<div class="row">

  <div class="eightcol last">

    <!-- Begin Form -->

    <form id="my-form" action="/admin/indexupdate" method="post">

        <section name="产品编辑" >
          <div><label>产品编号:</label><input id="comid" name="comid" type="text" value="${param.id}" /></div>
          <div><label>产品名:</label><input id="comname" name="comname" type="text"value="${param.name}" /></div>
          <div><label>价格:</label><input id="comprice" name="comprice" type="text" value="${param.price}"/></div>
          <div><label>数量:</label><input id="comnum" name="comnum"  type="text"  value="${param.numb}"/></div>
          <div><label>颜色:</label><input name="comcolor" type="text" value="${param.color}" /></div>
          <div><label>照片:</label><input id="comphoto" name="comphoto" type="text" value="${param.photo}"/></div>
          <div><label>描述:</label><input name="comdes"  type="text" value="${param.des}"/></div>
        </section>
        
        

       <section name="产品编辑2">

          <div><label>是否新品:</label><input id="comnew" name="comnew" type="text" value="${param.isnew}"/></div>
          <div><label>产品类别:</label><input id="comclassid" name="comclassid" type="text" value="${param.classid}"/></div>
          <div><label>已售数量:</label><input id="comsalenum" name="comsalenum" type="text" value="${param.salenum}"/></div>
           <div><label>日期:</label><input name="comdate" class="datepicker" data-ideal="date" type="text" placeholder="年-月-日"/></div>
        </section>

      <div><hr/></div>

      <div>
        <button type="submit">提交</button>
        <button id="reset" type="button">重置</button>
      </div>

    </form>

    <!-- End Form -->

  </div>

</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

	onFail: function(){
		alert( $myform.getInvalid().length +' invalid fields.' )
	},

	inputs: {
		'password': {
			filters: 'required pass',
		},
		'comname': {
			filters: 'required comname',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'file': {
			filters: 'extension',
			data: { extension: ['jpg'] }
		},
		'comments': {
			filters: 'min max',
			data: { min: 50, max: 200 }
		},
		'states': {
			filters: 'exclude',
			data: { exclude: ['default'] },
			errors : {
				exclude: '选择国籍.'
			}
		},
		'langs[]': {
			filters: 'min max',
			data: { min: 2, max: 3 },
			errors: {
				min: 'Check at least <strong>2</strong> options.',
				max: 'No more than <strong>3</strong> options allowed.'
			}
		}
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst()
});

$myform.focusFirst();
</script>
<div style="text-align:center;">
<p>来源：More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
</body>
</html>