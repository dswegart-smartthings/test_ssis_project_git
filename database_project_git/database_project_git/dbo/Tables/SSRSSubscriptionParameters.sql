CREATE TABLE [dbo].[SSRSSubscriptionParameters] (
    [RecipientName]  NVARCHAR (102) NOT NULL,
    [EmployeeKey]    INT            NOT NULL,
    [RecipientEmail] NVARCHAR (50)  NULL,
    [ParameterName]  VARCHAR (17)   NOT NULL,
    [ParameterValue] INT            NOT NULL
);

