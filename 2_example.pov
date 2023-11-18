//  2_example.pov        

#include "colors.inc"  
#include "skies.inc"  
#include "shapes.inc"
#include "textures.inc"     
#include "woods.inc"
#include "stones.inc"                                        
#include "glass.inc"
#include "metals.inc"

  
camera{ 
  location <0.0, 2.0, -10.0> 
  look_at  <0.0, 0.0, 0.0> 
  right x * image_width / image_height
} 
             
             
light_source { 
  <0.0,9.0, 1.0> 
  color rgb <1.0, 1.0, 1.0>   
  spotlight
} 
             
             
sky_sphere {
  S_Cloud5
}            


plane {
  y, -1
  pigment { color rgb <0.8,0.6,0.4> }
}      

 
sphere { 
  <0.0, 1.0 ,0.0>, 1.0   
  texture { Rusty_Iron }  
  translate <4, 0, 0> 
}
                       
                         
box {
    <-1.0,  0.0, -1.0> 
    <-2.0,  3.0, -2.0>        
    texture { Peel } 
    rotate <0, 0, 45>  
}   


cone {  
  <3, 2, 0>, 0.2   
  <3, 0, 0>, 1.0    
  translate <-5, 0, 0>   
  scale <2, 1,-1>    
  texture { 
    Cork
    finish {Dull}
    scale 0.9
  }          
   rotate <0, 0, 180>  
}