<%@ page import="java.util.List, com.example.employee.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtered Employees for Manager</title>
    <style>
        /* Body Styling */
        body {
            background-color: yellow; /* Background changed to Yellow */
            font-family: 'Arial', sans-serif; /* Font family */
            color: #333; /* Text color */
            padding: 20px; /* Padding for body */
            text-align: center; /* Center text */
        }

        /* Table Styling */
        table {
            width: 100%; /* Full width table */
            max-width: 800px; /* Max width for the table */
            margin: 0 auto; /* Center the table */
            border-collapse: collapse; /* Collapse borders */
            background: #2E8B57; /* Background changed to Sea Green */
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); /* Shadow effect */
            border-radius: 10px; /* Rounded corners */
        }

        th, td {
            padding: 15px; /* Padding for cells */
            text-align: left; /* Align text to the left */
            border-bottom: 1px solid #ddd; /* Bottom border for rows */
        }

        th {
            background-color: #333; /* Black background for headers */
            color: white; /* White text for headers */
        }

        tr:hover {
            background-color: #f1f1f1; /* Light grey on hover */
        }

        a {
            display: inline-block; /* Display as inline block */
            margin-top: 20px; /* Space above */
            text-decoration: none; /* Remove underline */
            color: #333; /* Text color */
            padding: 10px 20px; /* Padding for the link */
            background-color: #2E8B57; /* Sea Green background */
            border-radius: 5px; /* Rounded corners */
        }

        a:hover {
            background-color: #555; /* Darker shade on hover */
            color: white; /* White text on hover */
        }
    </style>
</head>
<body>
    <h2>Filtered Employees</h2>

    <table border="1">
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Role</th>
            <th>Email</th>
            <th>Department</th>
            <th>Position</th>
            <th>City</th>
            <th>Salary</th>
        </tr>
        <%
            List<Employee> employees = (List<Employee>) request.getAttribute("employees");
            if (employees != null && !employees.isEmpty()) {
        %>
            <%
                for (Employee employee : employees) {
            %>
                <tr>
                    <td><%= employee.getEmployeeId() %></td>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getRole() %></td>
                    <td><%= employee.getEmail() %></td>
                    <td><%= employee.getDepartment() %></td>
                    <td><%= employee.getPosition() %></td>
                    <td><%= employee.getCity() %></td>
                    <td><%= employee.getSalary() %></td>
                </tr>
            <%
                }
            %>
        <%
            } else {
        %>
            <tr>
                <td colspan="8">No employees found matching the filter criteria.</td>
            </tr>
        <%
            }
        %>
    </table>

    <a href="/manager">Back to Dashboard</a> <!-- Redirect back to manager dashboard -->
</body>
</html>
