# Overview of the analysis:

This anaysis stores data containing the employee information of Pewlett Hackard from CSV files into a relational database system.
This method of storing information provides flexible access to big data. The analysis' main focus is the retrieval of retirement information that will be used 
by Pewlett Hackard to plan in advance for upcoming retirements.

## Results:

A few tables were created that contain information only relevant to retiring workers, and these tables were also converted to CSV files for use by other tools namely Pandas and Excel.

* A table was made for retiring titles that reveal the positions that will be open in the near future.
* Another table was created to list the current workers eligible to participate in the organization's mentorship program.
* The number of employees approaching retirement grouped by their titles.
* The count function was used to provide the number of retiring employees in each title.


## Summary:

Some employees have served at different capacities within the organization over the years, 
so there are multiple rows in some tables that have slightly different information but refer to the same person.
To address this issue, the "DISTINCT" keyword was used to only select or display the most recent information for those employees.

The Unique Title table was required a JOIN statement with another table because it contains a column that was used to sort the table (on the left), while no content of
the table on the right was displayed

