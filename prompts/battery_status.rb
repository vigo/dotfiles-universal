#!/usr/bin/env ruby
# encoding: utf-8
# modified from http://quickleft.com/blog/awesome-zsh-prompts-can-be-yours

if `uname`.strip == "Darwin"
  $power_data = `pmset -g batt`.strip
  $percent_battery = $power_data.match(/\d+\%/).to_s.gsub("%","").to_f
  $are_we_on_ac = $power_data.match(/AC Power/).to_s.empty? ? false : true

  def show_available_power(type)
    case type
    when :time
      time_data = $power_data.match(/(\d*):(\d*) remaining/)
      unless time_data.to_s.empty?
        hours = time_data[1].to_i
        minutes = time_data[2].to_i
        times_left = hours == 0 ? "min" : "hrs"
        # if hours < 1 and minutes < 20
        #   `terminal-notifier -title "Low Battery" -message "You have #{minutes} minute(s) left" -sound "Ping"` unless `which terminal-notifier`.strip.empty?
        # end
        "#{hours}:#{sprintf("%02d", minutes)} #{times_left}"
      else
        "??"
      end
    when :percent
      "%#{$percent_battery.to_i}"
    end
  end

  unless $are_we_on_ac
    puts "[#{show_available_power :time}] "
  end
end