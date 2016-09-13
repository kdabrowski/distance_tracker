module DailyReportsHelper
  def transport_type_presenter(transport_array)
    transport_array.uniq.join(', ')
  end
end
