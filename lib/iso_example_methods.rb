# coding: UTF-8
module IsoExampleMethods
  def description
    if @options.key?(:iso_id)
      ## if the description is empty... we don't do anything
      ## it shouldn't be empty though
      unless metadata[:description].to_s.empty?
        metadata[:description] = "(#{@options[:iso_id]}) #{metadata[:description]}"
      end
    end
    super
  end
end