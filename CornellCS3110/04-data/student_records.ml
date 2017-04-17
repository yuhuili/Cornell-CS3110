type student = { first_name : string ; last_name : string ; gpa : float }

let s = { first_name = "Yuhui"; last_name = "Li"; gpa = 3.9 }
let stu_name {first_name;last_name} = (first_name, last_name)
let create_student fn ln gpa = { first_name = fn; last_name = ln; gpa = gpa }
