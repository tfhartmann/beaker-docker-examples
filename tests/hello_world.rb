# Run Hell World on all hosts
hosts.each do |h|
  on h, 'echo hello world'
end
