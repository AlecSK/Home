IF object_id('[dbo].[p_DeleteSimpleDictionary]') IS NOT NULL
   DROP PROCEDURE [dbo].[p_DeleteSimpleDictionary]
GO

CREATE PROCEDURE [dbo].[p_DeleteSimpleDictionary]
/***********************************************************
* Code generated by SoftTree SQL Assistant � v6.3.153
*
* Procedure description: This procedure is used for 
*                        deleting records from table 
*                        dbo
* Date:   16.01.2013 
* Author: okruglov
*
* Changes
* Date        Modified By            Comments
************************************************************
* 16.01.2013  okruglov     Initial version
************************************************************/
(
    @SD int
)
AS
BEGIN
    SET NOCOUNT ON
    DECLARE @rowcount INT, @error INT

    -- start transaction
	BEGIN TRANSACTION

    -- delete record using the specified criteria, 1 record deletion is expected
    DELETE FROM [dbo].[SimpleDictionary]
    WHERE  SD = @SD

    -- capture operation completion code and number of records affected
	SELECT @rowcount = @@ROWCOUNT, 
           @error = @@ERROR

    -- check for errors
	IF @error != 0
    BEGIN
        -- cancel transaction, undo changes
        ROLLBACK TRANSACTION

		-- report error and exit with non-zero exit code
        RAISERROR('Unable to delete record. See previous message for details.', 16, 1) 
		RETURN @error
    END
    -- check for rows updated
    IF @rowcount != 1 
    BEGIN
        -- cancel transaction, undo changes
        ROLLBACK TRANSACTION

		-- report error and exit with non-zero exit code
		IF @rowcount = 0
            RAISERROR('Warning. No records found for the specified criteria, while just 1 was expected.', 10, 1) 
		ELSE
            RAISERROR('Critical error. More than 1 record found for the specified criteria, while just 1 was expected.', 16, 1) 
		RETURN 1
    END 

    -- commit changes and return 0 code indicating successful completion
    COMMIT TRANSACTION
    RETURN 0
END
GO

-- uncomment the following 2 lines if you want to grant procedure permissions to some other user or role
-- GRANT EXECUTE ON [dbo].[p_DeleteSimpleDictionary] TO [some user or role here]
-- GO


IF object_id('[dbo].[p_GetSimpleDictionary]') IS NOT NULL
   DROP PROCEDURE [dbo].[p_GetSimpleDictionary]
GO

CREATE PROCEDURE [dbo].[p_GetSimpleDictionary]
/***********************************************************
* Code generated by SoftTree SQL Assistant � v6.3.153
*
* Procedure description: This procedure is used for 
*                        retrieving records from table 
*                        dbo
* Date:   16.01.2013 
* Author: okruglov
*
* Changes
* Date        Modified By            Comments
************************************************************
* 16.01.2013  okruglov     Initial version
************************************************************/
(
    @SD int
)
AS
BEGIN
    SET NOCOUNT ON
    DECLARE @rowcount INT, @error INT

    -- search and return records
    SELECT SD,
           RecType,
           ParentSD,
           CurrentN,
           Name,
           [Description],
           SortN,
           IntValue,
           FloatValue,
           StringValue,
           DateValue,
           MultiValue,
           MemoValue,
           Comment,
           IsDeleted,
           CreationDate,
           ChangeDate 
    FROM [dbo].[SimpleDictionary]
    WHERE  SD = @SD

     -- capture operation completion code and number of records affected
	SELECT @rowcount = @@ROWCOUNT, 
           @error = @@ERROR

	IF @error != 0
    BEGIN
		-- report error and exit with non-zero exit code
        RAISERROR('Unable to retrieve records. See previous message for details.', 16, 1) 
		RETURN @error
    END
    IF @rowcount = 0
    BEGIN
		-- report error and exit with non-zero exit code
        RAISERROR('Critical error. No records found for the specified criteria.', 16, 1) 
		RETURN 1
    END 
    IF @rowcount > 1 
    BEGIN
		-- report error and exit with non-zero exit code
        RAISERROR('Warning. More than 1 record found for the specified criteria, while just 1 is expected.', 10, 1) 
		RETURN 1
    END 

    -- commit changes and return 0 code indicating successful completion
	RETURN 0
END
GO

-- uncomment the following 2 lines if you want to grant procedure permissions to some other user or role
-- GRANT EXECUTE ON [dbo].[p_GetSimpleDictionary] TO [some user or role here]
-- GO


IF object_id('[dbo].[p_SaveSimpleDictionary]') IS NOT NULL
   DROP PROCEDURE [dbo].[p_SaveSimpleDictionary]
GO

CREATE PROCEDURE [dbo].[p_SaveSimpleDictionary]
/***********************************************************
* Code generated by SoftTree SQL Assistant � v6.3.153
*
* Procedure description: This procedure is used for adding 
*                        and updating records in table 
*                        dbo
* Date:   16.01.2013 
* Author: okruglov
*
* Changes
* Date        Modified By            Comments
************************************************************
* 16.01.2013  okruglov     Initial version
************************************************************/
(
    @SD int = NULL,
    @RecType char(1) = NULL,
    @ParentSD int = NULL,
    @CurrentN int = NULL,
    @Name varchar(100) = NULL,
    @Description varchar(200) = NULL,
    @SortN int = NULL,
    @IntValue int = NULL,
    @FloatValue float = NULL,
    @StringValue varchar(50) = NULL,
    @DateValue smalldatetime = NULL,
    @MultiValue varchar(1000) = NULL,
    @MemoValue varchar(4000) = NULL,
    @Comment varchar(1000) = NULL,
    @IsDeleted bit = NULL,
    @CreationDate smalldatetime = NULL,
    @ChangeDate smalldatetime = NULL
)
AS
BEGIN
    SET NOCOUNT ON
    DECLARE @rowcount INT, @error INT, @id INT

    -- start transaction
	BEGIN TRANSACTION

    -- check if the specified record already exists, if yes, update it, if no, create it
    IF EXISTS 
    (    
         SELECT * 
         FROM [dbo].[SimpleDictionary]
         WHERE  SD = @SD
    )
    BEGIN 
         -- insert new record
         INSERT INTO [dbo].[SimpleDictionary]
         (
             SD,
             RecType,
             ParentSD,
             CurrentN,
             Name,
             [Description],
             SortN,
             IntValue,
             FloatValue,
             StringValue,
             DateValue,
             MultiValue,
             MemoValue,
             Comment,
             IsDeleted,
             CreationDate,
             ChangeDate
         )
         VALUES 
         (
             @SD,
             @RecType,
             @ParentSD,
             @CurrentN,
             @Name,
             @Description,
             @SortN,
             @IntValue,
             @FloatValue,
             @StringValue,
             @DateValue,
             @MultiValue,
             @MemoValue,
             @Comment,
             @IsDeleted,
             @CreationDate,
             @ChangeDate
         )
    END 
    ELSE
    BEGIN
         -- update existing record
         UPDATE [dbo].[SimpleDictionary]
         SET SD = @SD,
             RecType = @RecType,
             ParentSD = @ParentSD,
             CurrentN = @CurrentN,
             Name = @Name,
             [Description] = @Description,
             SortN = @SortN,
             IntValue = @IntValue,
             FloatValue = @FloatValue,
             StringValue = @StringValue,
             DateValue = @DateValue,
             MultiValue = @MultiValue,
             MemoValue = @MemoValue,
             Comment = @Comment,
             IsDeleted = @IsDeleted,
             CreationDate = @CreationDate,
             ChangeDate = @ChangeDate
         WHERE  SD = @SD
    END

    -- capture operation completion code and number of records affected
	SELECT @rowcount = @@ROWCOUNT, 
           @error = @@ERROR,
           @id = SCOPE_IDENTITY()

	IF @error != 0
    BEGIN
        -- cancel transaction, undo changes
        ROLLBACK TRANSACTION

		-- report error and exit with non-zero exit code
        RAISERROR('Unable to update or insert new record. See previous message for details.', 16, 1) 
		RETURN @error
    END
    IF @rowcount != 1 
    BEGIN
        -- cancel transaction, undo changes
        ROLLBACK TRANSACTION

		-- report error and exit with non-zero exit code
        RAISERROR('Critical error. More than 1 record found for the specified criteria, just 1 is expected.', 16, 1) 
		RETURN 1
    END 

    -- commit changes and return 0 code indicating successful completion
    COMMIT TRANSACTION

	-- if operation type 'Add record', return result set with the last inserted column value 
    IF @id IS NOT NULL
        SELECT @id AS NewRecordID
    RETURN 0
END
GO

-- uncomment the following 2 lines if you want to grant procedure permissions to some other user or role
-- GRANT EXECUTE ON [dbo].[p_SaveSimpleDictionary] TO [some user or role here]
-- GO


