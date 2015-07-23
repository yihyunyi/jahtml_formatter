# coding: UTF-8
module IsoExampleMethods
  def description
    if metadata.key?(:key)
      ## if the description is empty... we don't do anything
      ## I guess it can be empty if an it is defined like so:
      ## it { should have(5).items } - what then?
      unless metadata[:description].to_s.empty? || metadata[:description].include?(metadata[:key])
        metadata[:description] = "#{metadata[:description]}, iso: #{metadata[:key]}"
      end
    end
    super
  end
end
