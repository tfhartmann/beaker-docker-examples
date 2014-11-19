#  Since we know we installed ssh, lets confirm it's running
test_name "Check SSH"

step "Check for the sshd deamon"

hosts.each do |host|
  process_count_check = "bash -c '[[ $(ps auxww | grep sshd | wc -l) -eq 1 ]]'"

  on(host, process_count_check) { assert_equal(0, exit_code) }
end

