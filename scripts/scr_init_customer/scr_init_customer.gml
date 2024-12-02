function scr_init_customer(inst){
// Apply properties to the customer instance
with (inst) {
    ready_to_seat = false;  
    seated = false;         
    order_taken = false;    
    ready_to_order = false;
    ready_to_eat = false;
    eating_timer = 300;
    order_timer = 120;
    move_speed = 2;
    customer_id = id;
}
}