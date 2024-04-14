
--------------------------------------------------------------------------------------------------------------

--DAY 21

--------------------------------------------------------------------------------------------------------------

-- Table for Cricket Teams
CREATE TABLE CricketTeams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(50)
);

-- Table for Cricket Match Details
CREATE TABLE MatchDetails (
    MatchID INT PRIMARY KEY,
    Team1ID INT,
    Team2ID INT,
    Team1Score INT,
    Team2Score INT,
    WinnerTeamID INT,
    FOREIGN KEY (Team1ID) REFERENCES CricketTeams(TeamID),
    FOREIGN KEY (Team2ID) REFERENCES CricketTeams(TeamID),
    FOREIGN KEY (WinnerTeamID) REFERENCES CricketTeams(TeamID)
);

-- Inserting Cricket Teams
INSERT INTO CricketTeams (TeamID, TeamName) VALUES
(1, 'Team A'),
(2, 'Team B'),
(3, 'Team C'),
(4, 'Team D');

-- Inserting Cricket Match Details
INSERT INTO MatchDetails (MatchID, Team1ID, Team2ID, Team1Score, Team2Score, WinnerTeamID) VALUES
(1, 1, 2, 150, 120, 1),   -- Team A wins
(2, 3, 4, 180, 160, 3),   -- Team C wins
(3, 2, 3, 140, 160, 3),   -- Team C wins
(4, 1, 4, 130, 140, 4);   -- Team D wins


SELECT * FROM CricketTeams

SELECT * FROM MatchDetails

SELECT C.TeamID, C.TeamName, COUNT(M.MatchID) WINS FROM CricketTeams C CROSS JOIN MatchDetails M
WHERE C.TeamID = M.WinnerTeamID
GROUP BY C.TeamID, C.TeamName
ORDER BY WINS DESC



-- Table for Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerID INT, -- ID of the manager for each employee
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);


-- Inserting Employee Data
INSERT INTO Employees (EmployeeID, Name, ManagerID) VALUES
(1, 'John', 3),    
(2, 'Alice', 3),   
(3, 'Emily', NULL),
(4, 'David', 3),   
(5, 'Emma', 4);    

SELECT * FROM Employees

SELECT E.Name AS EmployeeName , M.Name AS ManagerName FROM Employees E JOIN Employees M
ON E.ManagerID = M.EmployeeID