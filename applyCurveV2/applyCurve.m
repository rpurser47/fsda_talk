function curvedGrade = applyCurve(grade)
    arguments
        grade (:,1) double
    end
    curvedGrade = grade + (85 - median(grade,1));
end












