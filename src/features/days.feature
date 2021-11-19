Feature: Is it the day?

  This is an example of Feature for the Testing Academy.
  The scope of this feature is understand the ho to write a Scenario using Cucumber.

  Background:
    Given I know what days is today

  Example: Today is not Friday
    Given Today is 'Monday'
    When Someone asks me whether it's 'Friday'
    Then I should be told Nope

  Example: Today is Friday
    Given Today is 'Friday'
    When Someone asks me whether it's 'Friday'
    Then I should be told Yes

  Scenario Outline: Is today Friday?
    Given Today is '<today>'
    When Someone asks me whether it's 'Friday'
    Then I should be told <answer>
    Scenarios:
      | today  | answer |
      | Monday | Nope   |
      | Friday | Yes    |

  Example: Today is not Friday (2)
    Given Today is 'Wednesday'
    When Someone asks me whether it's 'Friday'
    Then I should be told Nope

  Scenario Outline: Is today Friday? (2)
    Given Today is '<today>'
    When Someone asks me whether it's 'Friday'
    Then I should be told <answer>
    Scenarios:
      | today     | answer |
      | Monday    | Nope   |
      | Friday    | Yes    |
      | Wednesday | Nope   |
