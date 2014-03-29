module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | RailsBricksIntroduction"      
    end
  end
end
