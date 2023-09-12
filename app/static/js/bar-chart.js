// Load data from CSV file
d3.csv("./data/data.csv").then(function(data) {

    console.log("Raw Data:", data);
    // Parse the data to appropriate types
    data.forEach(function(d) {
      d.x = +d.x;
      d.y = +d.y;
    });
  
    // D3 code to create the bar chart
    const svg = d3.select('#d3_svg');
    const width = +svg.attr('width');
    const height = +svg.attr('height');
    
    const xScale = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.x)])
      .range([0, width]);
    
    const yScale = d3.scaleLinear()
      .domain([0, d3.max(data, d => d.y)])
      .range([height, 0]);
    
    svg.selectAll('rect')
      .data(data)
      .enter().append('rect')
      .attr('x', d => xScale(d.x))
      .attr('y', d => yScale(d.y))
      .attr('width', 20)
      .attr('height', d => height - yScale(d.y))
      .attr('fill', 'steelblue');
  });
  