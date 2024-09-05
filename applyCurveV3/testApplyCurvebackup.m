    if any(curvedGrade > 100)
        curvedGrade(curvedGrade > 100) = 100;
    end


classdef testApplyCurve < matlab.unittest.TestCase

    methods (Test)
        % Test methods

        function basic(testCase)
            test = [78;86;72;88;74;67];
            actual = applyCurve(test);

            expected = [87;95;81;97;83;76];
            assertEqual(testCase, actual, expected)
        end

        function wrongDim(testCase)
            test = [78 86 72 88 74 67];
            actual = applyCurve(test);

            expected = [87;95;81;97;83;76];
            assertEqual(testCase, actual, expected)
        end

        function changeTarget(testCase)
            test = [78,86,72,88,74,67];
            actual = applyCurve(test,87);

            expected = [89;97;83;99;85;78];
            assertEqual(testCase, actual, expected)
        end

        function exceed100(testCase)
            test = [78,86,72,88,74,67];
            actual = applyCurve(test,89);

            expected = [91;99;85;100;87;80];
            assertEqual(testCase, actual, expected)
        end
    end

end