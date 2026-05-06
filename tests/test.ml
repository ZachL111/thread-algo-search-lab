#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 91; capacity = 83; latency = 15; risk = 5; weight = 10 };;
expect (score signal_case_1 = 240);;
expect (classify signal_case_1 = "accept");;
let signal_case_2 = { demand = 92; capacity = 82; latency = 23; risk = 24; weight = 6 };;
expect (score signal_case_2 = 118);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 98; capacity = 94; latency = 14; risk = 6; weight = 7 };;
expect (score signal_case_3 = 253);;
expect (classify signal_case_3 = "accept");;

#use "src/review.ml";;
let domain_review = { signal = 57; slack = 21; drag = 17; confidence = 50 };;
expect (review_score domain_review = 134);;
expect (review_lane domain_review = "watch");;
