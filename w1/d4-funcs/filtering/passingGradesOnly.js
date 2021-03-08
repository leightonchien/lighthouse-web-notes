const grades = [73, 69, 3, 100, 50, 70, 69, 88, 95, 77, 35];

const passingGrade = grades.filter(grade => grade >= 70);

console.log(passingGrade);

//result [ 73, 100, 70, 88, 95, 77 ]