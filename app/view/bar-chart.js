
svg.selectAll('rect')
  .data(data)
  .enter().append('rect')
  .attr('x', function(d, i) { return i * 25; })
  .attr('y', function(d) { return 100 - d; })
  .attr('width', 20)
  .attr('height', function(d) { return d; });
