class Chair

  def initialize(material, size, style)
    @material=material
    @size=size
    @style=style
 end

 def hold_weight
   if @material=="wood" || @material=="metal"
     chair_size
   else
     "Get a better chair"
   end
 end

 def break
   "Call a technician"
 end

 def movement
   if @style=="office"
     "Chair got wheels"
   elsif @style == "furniture"
     "You got to lift it"
   else
     "Get a different chair"
   end
 end

 private

 def chair_size
   if @size > 100
     "This chair resist 150 pounds"
   else
     "This chair can't hold more than 120 pounds"
   end
 end
end
