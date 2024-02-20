# Tests

## Command Line Args
- bad argc (0)
- bad argc (>2)

## File Input
- check data in each cell (missing values/ extra values)
- check all studentIDs and grades numerical (with numbers/ with letters)
- all grades 0-100 inclusive

## Menu Interaction
- test non numeric input
- test out of range input
- test menu repeated
- can handle invalid studentid

## Success
- Displays whole database with columns
- Correctly gets students data when searched by id
- Calculates correct average
- Calculates correct number of records

# Errors

1. Invalid command line arguments: `Usage: studentData <filename>`
2. File not found: `Error: Bad filename`
3. Invalid csv data: `Error: CSV file does not have expected format`
4. Bad menu choice: `Error: Invalid menu choice` (program should repeat to allow correct menu options to be shown)
5. Student ID not found: `Error: Could not find student`