# Chaining statements together
# If example
song_type = if song.mp3_type ==MP3::Jazz
              if song.written < Date.new(1935,1,1)
                Song::TradJazz
              else Song::Jazz
              end
            else
              Song::Other
            end

            puts song_type

# Case example
rating =  case votes_cast
          when 0...10     then Rating::SkipThisOne
          when 10...50    then Rating::CouldDoBetter
          else                 Rating::Rave
          end
