module GlobalGoalsHelper
  def my_select s_hash
    select = '<select>'
    select += '<option> Select One... </option>'
    s_hash.each do |k, v|
      select += "<option value = '#{k.to_s}'>" + v.to_s + "</option>"
    end
    select += "</select>"
    return select.html_safe
  end
end
