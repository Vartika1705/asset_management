<!DOCTYPE html>
<html>
<head>
    <title>Asset Reports</title>
</head>
<body>
    <h1>Asset Reports</h1>

    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
    <label for="department">Department:</label>
    <select id="department" name="department">
      <option value="IT">IT</option>
      <option value="Utility">Utility</option>
      <option value="Electrical">Electrical</option>
      <option value="Mechanical">Mechanical</option>
    </select>
    <br><br>

        <label for="Alloted_on">Alloted On:</label>
        <input type="date" id="Alloted_on" name="Alloted_on" required><br><br>

        <label for="Released_on">Released On:</label>
        <input type="date" id="Released_on" name="Released_on" required><br><br>

        <input type="submit" value="Generate Report">
    </form>

    <?php
    // Check if form is submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Retrieve user inputs
        $department = $_POST['department'];
        $AllotedOn = $_POST['Alloted_on'];
        $ReleasedOn = $_POST['Released_on'];

        // Connect to the database
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        $dbname = 'asset_mgmt';

        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            die('Connection failed: ' . $conn->connect_error);
        }

        $AssetQuery2 = "SELECT * FROM asset_detl NATURAL JOIN dept_master NATURAL JOIN asset_master
        WHERE DEPT_NAME = '$department' 
        AND Alloted_on >= '$AllotedOn' 
        AND Released_on <= '$ReleasedOn'";
        $AssetResult2 = $conn->query($AssetQuery2);
        echo "<table border='1' align='center' style='border-radius:1px;background:#73AD21;margin-bottom:20px;' id='ResultTable2'>";
        echo "<tr>
                <th>Department Name</th>
                <th>Asset Name</th>
                <th>Alloted on</th>
                <th>Released on</th>
              </tr>";
        while ($row = $AssetResult2->fetch_assoc()) {
            $DeptName = $row['DEPT_NAME'];
            $AssetName = $row['ASSET_NAME'];
            $AllotedOn = $row['Alloted_on'];
            $ReleasedOn = $row['Released_on'];
            echo "<tr>
                    <td>$DeptName</td>
                    <td>$AssetName</td>
                    <td>$AllotedOn</td>
                    <td>$ReleasedOn</td>
                  </tr>";
        }
        echo "</table>";

        // Close the database connection
        $conn->close();
    }
    ?>
</body>
</html>
