//** Ezekiel A. Mitchell **//
// ECEGR 2220_01
// Lab 01

//     SW[2]  SW[1]  SW[0]     LED_RED[0]
//       │      │      │           │
//       │      │      │           │
//       ▼      ▼      ▼           ▼
//   ┌─────────────────────┐       │
//   │                     │       │
//   │    Majority Vote    │───────┘
//   │                     │
//   └─────────────────────┘
//     Output = 1 when at
//     least 2 inputs are 1


// Declare a module [main entry point] 'top'
module multiplexer(
	input wire[17:0] SW, // input array 'SW' with 18 bits (0..17)
	// "wire" => SW is an input thats passing through the wires
	output reg[17:0] LED_RED); // output array 'LED_RED' with 18 bits
	// "reg" => MEANS LED_RED will be assigned values within the module
	
	// Defines a combinational logic block that runs continuously
	always @* begin
	// '@' => "whenever any signal in this block changes, run this block again"
		
		LED_RED[0] = 1'b0; // default value is 0
		// '1' bit wide | ''b' binary format | '0' binary value
		
		// case statement that examines the values of switches SW[0], SW[1], and  SW[2] together
		// as a 3-bit value
		case(SW[2:0])
			3'b011: begin // if SW[2]=0, SW[1]=1, SW[0]=1
				LED_RED[0] = 1'b1;
			end
			
			3'b101: begin // if SW[2]=1, SW[1]=0, SW[0]=1
				LED_RED[0] = 1'b1;
			end
		
			3'b110: begin // if SW[2]=1, SW[1]=1, SW[0]=0
				LED_RED[0] = 1'b1;
			end
			
			3'b111: begin // if SW[2]=1, SW[1]=1, SW[0]=1
				LED_RED[0] = 1'b1;
			end
		endcase
	end
endmodule