%{
  configs: [
    %{
      name: "default",
      checks: %{
        enabled: [{Credo.Check.Refactor.PassAsyncInTestCases, []}]
      }
    }
  ]
}
