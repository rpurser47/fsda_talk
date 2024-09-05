function curvedGrade = applyCurve(grade)
    curvedGrade = grade + (85 - median(grade,1));
end












