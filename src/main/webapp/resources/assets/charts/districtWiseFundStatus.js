$(function () {
	
	var DistrictWise_scheme = Highcharts.chart('districtWiseFundStatus', {
				chart: {
			        type: 'column',
			        options3d: {
			            enabled: true,
			            alpha: 0,
			            beta: 0,
			            depth: 20
			        }
			    },
			    title: {
			        text: null
			    },
			    xAxis: {
			        type: 'category'
			    },
			    yAxis: {
			        title: {
			            text: 'Amount'
			        }

			    },
			    legend: {
			        enabled: false
			    },
			    plotOptions: {
			        series: {
			            borderWidth: 0,
			            dataLabels: {
			                enabled: false
			            }
			        }
			    },

			    tooltip: {
			        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
			        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b><br/>'
			    },

			    "series": [
			        {
			            "name": "Total Amount Disbursed",
			            "colorByPoint": true,
			            "data": [
			                {
			                    "name": "Anugul",
			                    "y": 6204,
			                    "drilldown": "Anugul"
			                },
			                {
			                    "name": "Bargarh",
			                    "y": 4567,
			                    "drilldown": "Bargarh"
			                },
			                {
			                    "name": "Bhadrak",
			                    "y": 2702,
			                    "drilldown": "Bhadrak"
			                },
			                {
			                    "name": "Balasore",
			                    "y": 4522,
			                    "drilldown": "Balasore"
			                },
			                {
			                    "name": "Balangir",
			                    "y": 2240,
			                    "drilldown": "Balangir"
			                },
			                {
			                    "name": "Boudh",
			                    "y": 6192,
			                    "drilldown": "Boudh"
			                },
			                {
			                    "name": "Cuttack",
			                    "y": 8102,
			                    "drilldown": "Cuttack"
			                },
			                {
			                    "name": "Deogar",
			                    "y": 1192,
			                    "drilldown": "Deogar"
			                },
			                {
			                    "name": "Dhenkanal",
			                    "y": 3136,
			                    "drilldown": "Dhenkanal"
			                },
			                {
			                    "name": "Gajapati",
			                    "y": 1558,
			                    "drilldown": "Gajapati"
			                },
			                {
			                    "name": "Ganjam",
			                    "y": 1748,
			                    "drilldown": "Ganjam"
			                },
			                {
			                    "name": "Jagatsinghpur",
			                    "y": 1004,
			                    "drilldown": "Jagatsinghpur"
			                },
			                {
			                    "name": "Jajpur",
			                    "y": 6580,
			                    "drilldown": "Jajpur"
			                },
			                {
			                    "name": "Jharsuguda",
			                    "y": 1028,
			                    "drilldown": "Jharsuguda"
			                },
			                {
			                    "name": "Kalahandi",
			                    "y": 3874,
			                    "drilldown": "Kalahandi"
			                },
			                {
			                    "name": "Kandhamal",
			                    "y": 3450,
			                    "drilldown": "Kandhamal"
			                },
			                {
			                    "name": "KendraPara",
			                    "y": 5465,
			                    "drilldown": "KendraPara"
			                },
			                {
			                    "name": "Keonjhar",
			                    "y": 728,
			                    "drilldown": "Keonjhar"
			                },
			                {
			                    "name": "Khurda",
			                    "y": 1230,
			                    "drilldown": "Khurda"
			                },
			                {
			                    "name": "Koraput",
			                    "y": 457,
			                    "drilldown": "Koraput"
			                },
			                {
			                    "name": "Malkangiri",
			                    "y": 540,
			                    "drilldown": "Malkangiri"
			                },
			                {
			                    "name": "Mayurbhanj",
			                    "y": 5450,
			                    "drilldown": "Mayurbhanj"
			                },
			                {
			                    "name": "Nuapada",
			                    "y": 425,
			                    "drilldown": "Nuapada"
			                },
			                {
			                    "name": "Nabarangpur",
			                    "y": 4336,
			                    "drilldown": "Nabarangpur"
			                },
			                   {
			                    "name": "Nayagarh",
			                    "y": 4336,
			                    "drilldown": "Nayagarh"
			                },
			                   {
			                    "name": "Puri",
			                    "y": 4336,
			                    "drilldown": "Puri"
			                },
			                   {
			                    "name": "Rayagada",
			                    "y": 360,
			                    "drilldown": "Rayagada"
			                },
			                     {
			                    "name": "Sambalpur",
			                    "y": 4360,
			                    "drilldown": "Sambalpur"
			                },
			                     {
			                    "name": "Sonepur",
			                    "y": 4330,
			                    "drilldown": "Sonepur"
			                },
			                          {
			                    "name": "Sundargarh",
			                    "y": 3660,
			                    "drilldown": "Sundargarh"
			                }

			            ]
			        }
			    ],
		    "drilldown": {
			        "series": [
			            {
			                "name": "Total Amount Disbursed",
			                "id": "Anugul",
			                "data": [["Anugul",55],["Banarpal",23],["Chhendipada",42],["Athamallik",57],["Kishorenagar",33],["Pallahara",43],["Talcher",11],["Kaniha",44]]
			                
			            },
			            {
			                "name": "Total Amount Disbursed",
			                "id": "Bargarh",
			                "data": [["Bargarh",55],["Attabira",23],["Barapali",42],["Bheden",57],["Bijepur",33],["Sohela",43],["Jharbandha",11],["Bhatli",8],["Padmapur",4],["Bargarh Sadar",55],["Gaisilet",74],["Melchhamunda",56],["Ambabhona",44],["BurdenP.S.",84]]
			            }
			        ]
			    }

			});
});