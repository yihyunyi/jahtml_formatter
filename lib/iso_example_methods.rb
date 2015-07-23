# coding: UTF-8
module IsoExampleMethods
  def description
    ## if the description is empty... we don't do anything
    ## I guess it can be empty if an it is defined like so:
    ## it { should have(5).items } - what then?
    unless metadata[:description].to_s.empty?
     metadata[:description] = "#{metadata[:description]}"
    end  
    super
  end
end
