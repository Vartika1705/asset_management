<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asset_mgmt";
// Create connection-1
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$AssetQuery = "SELECT * FROM asset_detl ORDER BY dept_id";
$AssetResult = $conn->query($AssetQuery);
echo "<table border='1' align='center' style='border-radius:1px;background:#73AD21;margin-bottom:20px;' id='ResultTable'>";
echo "<tr>
        <th>Asset ID</th>
        <th>Department ID</th>
        <th>Location ID</th>
      </tr>";
while ($row = $AssetResult->fetch_assoc()) {
    $AssetId = $row['ASSET_ID'];
    $DeptID = $row['DEPT_ID'];
    $LocId = $row['LOC_ID'];
    echo "<tr>
            <td>$AssetId</td>
            <td>$DeptID</td>
            <td>$LocId</td>
          </tr>";
}
echo "</table>";

$AssetQuery2 = "SELECT * FROM asset_detl NATURAL JOIN asset_master";
$AssetResult2 = $conn->query($AssetQuery2);
echo "<table border='1' align='center' style='border-radius:1px;background:#73AD21;margin-bottom:20px;' id='ResultTable2'>";
echo "<tr>
        <th>Asset ID</th>
        <th>Department ID</th>
        <th>Location ID</th>
        <th>Asset Name</th>
        <th>Asset Type</th>
      </tr>";
while ($row = $AssetResult2->fetch_assoc()) {
    $AssetId = $row['ASSET_ID'];
    $DeptID = $row['DEPT_ID'];
    $LocId = $row['LOC_ID'];
    $AssetName = $row['ASSET_NAME'];
    $AssetType = $row['ASSET_TYPE'];
    echo "<tr>
            <td>$AssetId</td>
            <td>$DeptID</td>
            <td>$LocId</td>
            <td>$AssetName</td>
            <td>$AssetType</td>
          </tr>";
}
echo "</table>";

$AssetQuery3 = "SELECT * FROM asset_detl NATURAL JOIN dept_master";
$AssetResult3 = $conn->query($AssetQuery3);
echo "<table border='1' align='center' style='border-radius:1px;background:#73AD22;margin-bottom:20px;' id='ResultTable3'>";
echo "<tr>
        <th>Asset ID</th>
        <th>Department ID</th>
        <th>Location ID</th>
        <th>Department Name</th>
      </tr>";
while ($row = $AssetResult3->fetch_assoc()) {
    $AssetId = $row['ASSET_ID'];
    $DeptID = $row['DEPT_ID'];
    $LocId = $row['LOC_ID'];
    $DeptName = $row['DEPT_NAME'];
    echo "<tr>
            <td>$AssetId</td>
            <td>$DeptID</td>
            <td>$LocId</td>
            <td>$DeptName</td>
          </tr>";
}
echo "</table>";

$AssetQuery4 = "SELECT * FROM asset_detl NATURAL JOIN `loc_master`;";
$AssetResult4 = $conn->query($AssetQuery4);
echo "<table border='1' align='center' style='border-radius:1px;background:#73AD22;margin-bottom:20px;' id='ResultTable4'>";
echo "<tr>
        <th>Asset ID</th>
        <th>Department ID</th>
        <th>Location ID</th>
        <th>Location Name</th>
        <th>Address</th>
        <th>Floor</th>
      </tr>";
while ($row = $AssetResult4->fetch_assoc()) {
    $AssetId = $row['ASSET_ID'];
    $DeptID = $row['DEPT_ID'];
    $LocId = $row['LOC_ID'];
    $LocName = $row['LOC_NAME'];
    $ADDRESS = $row['ASSET_ADDRESS'];
    $FLOOR = $row['FLOOR'];
    echo "<tr>
            <td>$AssetId</td>
            <td>$DeptID</td>
            <td>$LocId</td>
            <td>$LocName</td>
            <td>$ADDRESS</td>
            <td>$FLOOR</td>
          </tr>";
}
echo "</table>";
?>
