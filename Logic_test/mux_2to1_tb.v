module mux_2to1_tb;
reg d0;
reg d1;
reg s;
wire y;


mux_2to1 utt(s,d0,d1,y);

initial begin
// ---- สั่งบันทึกสัญญาณลงไฟล์ .vcd สำหรับ GTKWave ----
$dumpfile("mux_2to1.vcd");
$dumpvars(0, mux_2to1_tb);
// ---- ส่วนหัวของตารางผลลัพธ์ ----
$display("=== Hello World from Icarus Verilog : mux_2to1 ===");
        $display(" time(ns)   s         d0      d1 |  y ");
        
        // แก้ไข %s เป็น %b ทั้งหมด
        $monitor("     %4d   %b         %b      %b |  %b ", $time, s,d0,d1,y);
        
        // ---- ป้อนค่าสัญญาณทดสอบ ----
        s = 1'b0; d0 = 1'b0; d1 = 1'b0;
        #5 s = 1'b0; d0 = 1'b1; d1 = 1'b0;
        #5 s = 1'b0; d0 = 1'b0; d1 = 1'b1;
        #5 s = 1'b0; d0 = 1'b1; d1 = 1'b1;
        
        #5 s = 1'b1; d0 = 1'b0; d1 = 1'b0;
        #5 s = 1'b1; d0 = 1'b1; d1 = 1'b0;
        #5 s = 1'b1; d0 = 1'b0; d1 = 1'b1;
        #5 s = 1'b1; d0 = 1'b1; d1 = 1'b1;
        
        // หน่วงเวลาอีก 5 ก่อนจบ เพื่อให้ดูกราฟจังหวะสุดท้ายได้ชัดเจน
        #5;
        
        $display("=== Simulation finished ===");
        $finish;
end


endmodule