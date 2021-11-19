Feature: Forecast

  Scenario: I am happy if it is Sunny
    Given on Saturday I am in Cerignola
    And I want go a walk
    When I open Google
    And I search the forecast for Saturday
    Then The answers should be Sunny
    And I should be happy

  Example: Forecast for next 14 days
    Given Today is Monday, 22th of November
    When I ask the weather for the next 14 days in Bari
    Then The weatherman answers
      | days      | date             | weather |
      | Tuesday   | 23th of November | Sunny   |
      | Wednesday | 24th of November | Sunny   |
      | Thursday  | 25th of November | Sunny   |
      | Friday    | 26th of November | Cloudy  |
      | Saturday  | 27th of November | Rainy   |
      | Sunday    | 28th of November | Rainy   |
      | Monday    | 29th of November | Sunny   |
      | Tuesday   | 30th of November | Sunny   |
      | Wednesday | 1st of December  | Sunny   |
      | Thursday  | 2nd of December  | Sunny   |
      | Friday    | 3rd of December  | Cloudy  |
      | Saturday  | 4th of December  | Rainy   |
      | Sunday    | 5th of December  | Rainy   |
      | Monday    | 6th of December  | Rainy   |
