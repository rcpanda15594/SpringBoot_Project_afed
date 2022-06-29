$(function () {
	
	Highcharts.chart('su_stateFundStatus', {
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
			            innerSize: 0,
			            depth: 35,
			            dataLabels: {
			                enabled: true,
			                 format: '<b>{point.name}</b>: ({point.y}Cr)',
			            },
            			showInLegend: false
			        }
			    },
			    tooltip: {
			        headerFormat: '<span style="font-size:14px"><b>{series.name}</b></span><br>',
			        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b>Cr<br/>'
			    },
			    

			    "series": [
			        {
			            "name": "Total Fund Disbursed",
			            "colorByPoint": true,
			            "data": [
			                {
			                    "name": "KALIA",
			                    "y": 1820
			                },
			                {
			                    "name": "Farm Mechanization",
			                    "y": 1281.84
			                },
			                {
			                    "name": "Biju Krushak Kalyan Yojana (BKKY)",
			                    "y": 1500
			                },
			                {
			                    "name": "Biju Krushak Vikas Yojana (BKVY)",
			                    "y": 580.29
			                }
			            ]
			        }
			    ]
			});

});