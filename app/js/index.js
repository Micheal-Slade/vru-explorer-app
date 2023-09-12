// This file can be used to develop global HTMLWidgets
import { drawBarChart } from './bar-chart.js';

console.log("hello from index");

export function drawBarChartWrapper(){
    //This will call the drawBarChart function here
    drawBarChart();
}

Shiny.addCustomMesageHandler('prepareDataForBarChart', function(data){
    drawBarChartWrapper();
});