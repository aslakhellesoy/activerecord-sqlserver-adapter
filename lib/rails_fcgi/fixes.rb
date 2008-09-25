module ActiveRecord
  module ConnectionAdapters
    class ColumnWithIdentity
      def cast_to_time(value)
        return value if value.is_a?(Time) or value.is_a?(DateTime)
        time_array = ParseDate.parsedate(value)
        time_array[0] ||= 2000
        time_array[1] ||= 1
        time_array[2] ||= 1
        Time.send(Base.default_timezone, *time_array) rescue DateTime.new(*time_array[0..5]) rescue nil
      end
      def cast_to_datetime(value)
        if value.is_a?(Time) or value.is_a?(DateTime)
          if value.year != 0 and value.month != 0 and value.day != 0
            return value
          else
            return Time.mktime(2000, 1, 1, value.hour, value.min, value.sec) rescue nil
          end
        end
        return cast_to_time(value) if value.is_a?(Date) or value.is_a?(String) rescue nil
        value
      end
    end
  end
end

module ActionController
  class Base
    def render_text(text = nil, status = nil)
      @performed_render = true
      @response.headers['status'] = (status || DEFAULT_RENDER_STATUS_CODE).to_s
      @response.body = text
    end
  end
end
