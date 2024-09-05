function curvedGrade = applyCurve(grade, target)
    arguments
        grade (:,1) double
        target (1,1) double = 85
    end
    curvedGrade = grade + (target - median(grade,1));
end












