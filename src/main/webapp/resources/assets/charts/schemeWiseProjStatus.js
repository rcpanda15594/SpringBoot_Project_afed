$(function () {
	
	Highcharts.chart('su_centerFundStatus', {
			    chart: {
			        type: 'pie',
			        options3d: {
			            enabled: true,
			            alpha: 45,
			            beta: 0
			        }
			    },
			    title: {
			        text: null
			    },
			    plotOptions: {
			        pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            innerSize: 50,
			            depth: 35,
			            dataLabels: {
			                enabled: true
			            },
            			showInLegend: false
			        }
			    },
			    tooltip: {
			        headerFormat: '<span style="font-size:14px"><b>{series.name}</b></span><br>',
			        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b><br/>'
			    },
			    

			    "series": [
			        {
			            "name": "Total Projects",
			            "colorByPoint": true,
			            "data": [
			                {
			                    "name": "Rashtriya Krishi Vikas Yojana (RKVY)",
			                    "y": 635
			                },
			                {
			                    "name": "National Food Security Mission (NFSM)",
			                    "y": 234
			                },
			                {
			                    "name": "National Food Security Mission (NFSM)",
			                    "y": 224
			                },
			                {
			                    "name": "Sub-Mission on Agriculture Mechanization (SMAM)",
			                    "y": 344
			                },
			                {
			                    "name": "Sub-Mission on Agriculture Mechanization (SMAM)",
			                    "y": 444
			                }
			            ]
			        }
			    ]
			});

});