/// @description Insert description here
// You can write your code in this editor


draw_self();

draw_set_color(c_aqua);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _opty = 60;
_x = x + 20;

if ChatterboxIsStopped(chatterbox){
   draw_text_ext_color(x,y,"out of text",lineHeight,textWidth, c_aqua,  c_aqua,  c_aqua,  c_aqua, 1);
} else {
 
 draw_text_ext_color(x,y,text,lineHeight,textWidth, c_aqua,  c_aqua,  c_aqua,  c_aqua, 1);
 
 if ChatterboxGetOptionCount(chatterbox) > 0{
  for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++){
   var _option = string(_i+1) +": " + ChatterboxGetOption(chatterbox, _i);
 //_i starts at 0, but we want the choices to be numbered 1–2–3 not 0–1–2, so we +1 to it when we make our string to draw.
 
  draw_text_ext_color(_x, y+_opty,_option, lineHeight, textWidth, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 1);
  _opty+=20;
  
  }
 }
}

