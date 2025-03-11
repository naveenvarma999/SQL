CREATE DEFINER=`root`@`localhost` FUNCTION `new_function`(A INT, B INT, C INT) RETURNS int
BEGIN

RETURN A+B+C;
END