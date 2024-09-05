classdef testApplyCurve < matlab.unittest.TestCase

    methods (Test)
        % Test methods

        function basic(testCase)
            test = [78;86;72;88;74;67];
            actual = applyCurve(test);

            expected = [87;95;81;97;83;76];
            assertEqual(testCase, actual, expected)
        end
    end

end