//Todo: Add d3.csv or d3.json for fetching data. 

//Todo: Running a callback in Shiny. 

document.addEventListener('DOMContentLoaded', (event) => {

  // These calculations will be made more dynamic soon; 

 //Todo: chart needs dynamic sizing and margins.


// get data 
  const data = [4, 8, 15, 16, 23, 42, 50, 100, 200];

// svg dimmensions
  const height = 600;
  let width = 620;
  const marginTop = 20;
  const marginBottom = 20;
  const marginLeft = 30;
  const marginRight = 20;
  const barHeight = 20;

  // Check to see that the data has loaded in correctly
 console.log(data);

let chart = d3.select('.chart'); // this should really be an ID
let legend =  d3.select('.legend');
let table =  d3.select('.table');

 // clear all step to ensure no artifacts
 chart.selectAll('*').remove();

 chart.text('Chart');
 legend.text('Legend');

 table.
 text('Table');

// implement the svg dimensions

const svg = chart
  .append('svg')
  .attr('width', marginLeft + width + marginRight)
  .attr('height', marginTop + height + marginBottom)
  .style('background-color', '#fff')
  .append('g')
  .attr('transform', `translate(${marginLeft},${marginTop})`);



 // set up x-axis scale
  const x = d3.scaleLinear()
    .domain([0, d3.max(data)])
    .range([0, width]);

//Todo: Add a transform and translate to the x-axis
 // Call bottom axis
// let xAxis = d3
//   .axisBottom(x)
//   .tickSize((barHeight * data.length));

 // select chart    
    chart
    .attr('width', width)
    .attr('height', barHeight * data.length);

  const bar = chart.selectAll('g')
    .data(data)
    .enter().append('g')
    .attr('transform', (d, i) => `translate(0, ${i * barHeight})`);
  
  bar.append('rect')
    .attr('width', x)
    .attr('height', barHeight - 1)
    .attr('fill', '#ee266d');

  // chart.call(xAxis);

  bar.append('text')
    .attr('x', d => x(d) + 5)
    .attr('y', barHeight / 2)
    .attr('dy', '.35em')
    .text(d => d);
});
