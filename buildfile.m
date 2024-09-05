function plan = buildfile
    plan = buildplan(localfunctions);

    plan("test").Dependencies = "check";
end

function checkTask(~)
    codeIssues;
end

function testTask(~)
    runtests;
end
