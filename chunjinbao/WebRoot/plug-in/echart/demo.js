/**
 * 
 */
$(document).ready(function(){
	
  var data=[[3,7,9,1,4,6,8,2,5]];//这里是折线点的数据，格式[x,y],这里只写了一组数据，默认为y轴上的数据，而x上的数据默认为：1，2，3，4；
  var plot1 = $.jqplot ('chart1',data);//第一个参数为显示图表容器ID
});