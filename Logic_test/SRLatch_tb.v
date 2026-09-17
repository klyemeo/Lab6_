module SRLatchStimulus;
reg R;
reg S;
wire Q;
wire QN;


SRLatch utt(R,S,Q,QN);

initial begin
// ---- สั่งบันทึกสัญญาณลงไฟล์ .vcd สำหรับ GTKWave ----
$dumpfile("SRLatch.vcd");
$dumpvars(0, SRLatchStimulus);
// ---- ส่วนหัวของตารางผลลัพธ์ ----
$display("=== Hello World from Icarus Verilog : SRLatch ===");
        $display(" time(ns)   R S  |  Q QN ");
        
        // แก้ไข %s เป็น %b ทั้งหมด
        $monitor("     %4d   %b  %b |  %b  %b ", $time, R,S,Q,QN);

        S=0; R=0;  
        #5 S=1; R=0; 
        #5 S=0; R=0; 
        #5 S=0; R=1; 
        #5 S=0; R=0; 
        #5 S=1; R=0;
        #5 S=0; R=1; 
        #5 S=1; R=1; 
        #5 S=0; R=0; 
        #5 

        $display("=== Simulation finished ===");
        $finish;
end


endmodule