/*
========================================================================

Create Database and Shcemas

========================================================================

Script Purpose: 
	This script creates a new database named 'ETLCrimePipeline' after checking if it already exists.
	If the database exists, it is dropped and re-created. Additionally, the script sets up schemas 
	within the database: 'stagging', and 'business'.

WARNING:
	Running this script will drop the entire 'ETLCrimePipeline' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/




USE master; 
GO

-- Drop and re-create the "ETLCrimePipeline" database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ETLCrimePipeline')
BEGIN
		ALTER DATABASE CrimeETLPipeline SET SINGLE_USER WITH ROllBACK IMMEDIATE;
		DROP DATABASE CrimeETLPipeline
END
GO

-- Create the CrimeETLPipeline database
CREATE DATABASE CrimeETLPipeline;
GO

USE CrimeETLPipeline;
GO

-- Create Schemas
CREATE SCHEMA stagging;
GO

CREATE SCHEMA business;
