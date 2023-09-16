// scatterplot.js
svg.selectAll('circle')
  .data(data)
  .enter().append('circle')
  .attr('cx', function(d) { return d.x * 40; })
  .attr('cy', function(d) { return d.y * 4; })
  .attr('r', 5);
