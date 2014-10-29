#!/usr/bin/env ruby
# encoding: utf-8

if `uname`.strip == "Darwin"
  def get_paged_memory_usage(match_string, paging=4096)
    mvar = 3
    if match_string.split(/[^\w]/).length > 1
      mvar = 4
    end
    paged_val = `vm_stat | grep "Pages #{match_string}:" | awk '{ print $#{mvar}}'`.to_i
    gigabyte_val = (paged_val * paging) / 1024 / 1024 / 1000.0
  end
  
  installed_memory = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 1000.0
  total_consumed = 0
  ['wired down', 'active', 'inactive'].each { |key| total_consumed += get_paged_memory_usage(key) }
  printf("[%.2fG] ", (installed_memory-total_consumed))
end
