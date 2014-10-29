#!/usr/bin/env ruby
# encoding: utf-8

if `uname`.strip == "Darwin"
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
  puts "[%s]" % ips unless ips.empty?
end