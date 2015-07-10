#!/usr/bin/env ruby
# encoding: utf-8

if `uname`.strip == "Darwin"
  output = ""
  ips = `ifconfig -l`.strip.split.select{ |iface|
    ! `ifconfig #{iface}`.scan(/inet (\d+.\d+\.\d+\.\d+)/).empty? && iface != "lo0"
  }.map { |iface|
    {iface => `ifconfig #{iface}`.scan(/inet (\d+.\d+\.\d+\.\d+)/).flatten}
  }.map{ |hash|
    hash.collect{ |iface, ip|
      ip = ip.first if ip.is_a?(Array)
      "#{iface}: #{ip}"
    }
  }.join(", ")
  output = "%s" % ips unless ips.empty?
  
  if File.exists?("/usr/local/bin/boot2docker")
    docker_status = `boot2docker status`.strip
    unless docker_status == "poweroff"
      docker_ip = `boot2docker ip`.strip
      output = "#{output} docker: #{docker_ip}" if docker_ip
    end
  end
  
  puts "[#{output}]" unless output.empty?
end