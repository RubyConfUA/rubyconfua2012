RubyConfUA::Timing.describe do
  date_start '21 April 2012'
  date_end '22 April 2012'
  first_day {
    :time_start => '10:00',
    :time_end => '18:00',
    :dinner => {
      :time_start => '13:00',
      :time_end => '14:00'
      }
    :after_party => {
      :time_start => '20:00',
      :time_end => '...'
    }
  }
  second_day {
    :time_start => '11:00',
    :time_end => '18:00',
    :dinner => {
      :time_start => '14:00',
      :time_end => '15:00'
      }
  }
end
