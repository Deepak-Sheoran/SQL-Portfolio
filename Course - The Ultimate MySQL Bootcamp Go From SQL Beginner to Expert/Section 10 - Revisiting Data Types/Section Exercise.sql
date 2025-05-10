-- Print out the current time
SELECT TIME_FORMAT(CURTIME(), '%r') AS 'Current Time';

-- Print out the current date
SELECT DATE_FORMAT(CURDATE(), '%D of %M %Y') AS 'Today\'s Date';

-- Print Out the current day of the week
SELECT DAYOFWEEK(CURRENT_DATE) AS 'Today\'s Day of the Week', DAYNAME(NOW()) AS 'Today\'s Day';

-- Print out the current day and time using this format - mm/dd/yyyy
SELECT DATE_FORMAT(CURRENT_DATE, '%m/%e/%Y');

-- Print out the current day and time using this format - January 2nd at 3:15
SELECT CONCAT_WS(' ', DATE_FORMAT(CURRENT_DATE, '%M %D'), 'at', TIME_FORMAT(CURRENT_TIME, '%k:%s')) AS 'Required Format';