component extends="Base"  {

	public any function init(
		required any adapter,
		required string name,
		boolean force="true",
		boolean id="true",
		string primaryKey="id"
	) {
		local.args = "adapter,name,force";
		this.primaryKeys = ArrayNew(1);
		this.foreignKeys = ArrayNew(1);
		this.columns = ArrayNew(1);
		local.iEnd = ListLen(local.args);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			local.argumentName = ListGetAt(local.args,local.i);
			if(StructKeyExists(arguments,local.argumentName)) {
				this[local.argumentName] = arguments[local.argumentName];
			}
		}

		if(arguments.id && Len(arguments.primaryKey)) {
			this.primaryKey(name=arguments.primaryKey, autoIncrement=true);
		}
		return this;
	}

	/**
    * adds a primary key definition to the table. this method also allows for multiple primary keys.
    */
	public any function primaryKey(
		required string name,
		string type="integer",
		boolean autoIncrement="false",
		numeric limit,
		numeric precision,
		numeric scale,
		string references,
		string onUpdate="",
		string onDelete=""
	) {
		arguments.null = false;
		arguments.adapter = this.adapter;

		// don't allow multiple autoIncrement primarykeys
		if (ArrayLen(this.primaryKeys) && arguments.autoIncrement)
			$throw(message="You cannot have multiple auto increment primary keys.");

		local.column = CreateObject("component", "ColumnDefinition").init(argumentCollection=arguments);
		ArrayAppend(this.primaryKeys, local.column);

		if(StructKeyExists(arguments, "references"))
		{
			local.referenceTable = pluralize(arguments.references);
			local.foreignKey = CreateObject("component","ForeignKeyDefinition").init(adapter=this.adapter,table=this.name,referenceTable=local.referenceTable,column=arguments.name,referenceColumn="id",onUpdate=arguments.onUpdate,onDelete=arguments.onDelete);
			ArrayAppend(this.foreignKeys,local.foreignKey);
		}
		return this;
	}

	/**
    * adds a column to table definition
    */
	public any function column(
		required string columnName,
		required string columnType,
		string default,
		boolean null,
		any limit,
		numeric precision,
		numeric scale
	) {
		arguments.adapter = this.adapter;
		arguments.name = arguments.columnName;
		arguments.type = arguments.columnType;
		local.column = CreateObject("component","ColumnDefinition").init(argumentCollection=arguments);
		ArrayAppend(this.columns,local.column);
		return this;
	}

	/**
    * adds integer columns to table definition
    */
	public any function bigInteger(
		required string columnNames,
		numeric limit,
		string default,
		boolean null
	) {
		arguments.columnType = "biginteger";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds binary columns to table definition
    */
	public any function binary(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "binary";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds boolean columns to table definition
    */
	public any function boolean(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "boolean";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds date columns to table definition
    */
	public any function date(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "date";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds datetime columns to table definition
    */
	public any function datetime(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "datetime";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds decimal columns to table definition
    */
	public any function decimal(
		required string columnNames,
		string default,
		boolean null,
		numeric precision,
		numeric scale
	) {
		arguments.columnType = "decimal";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds float columns to table definition
    */
	public any function float(
		required string columnNames,
		string default="",
		boolean null="true"
	) {
		arguments.columnType = "float";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds integer columns to table definition
    */
	public any function integer(
		required string columnNames,
		numeric limit,
		string default,
		boolean null
	) {
		arguments.columnType = "integer";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds string columns to table definition
    */
	public any function string(
		required string columnNames,
		any limit,
		string default,
		boolean null
	) {
		arguments.columnType = "string";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds char columns to table definition
    */
	public any function char(
		required string columnNames,
		any limit,
		string default,
		boolean null
	) {
		arguments.columnType = "char";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds text columns to table definition
    */
	public any function text(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "text";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds UUID columns to table definition
    */
	public any function uniqueidentifier(
		required string columnNames,
		string default="newid()",
		boolean null
	) {
		arguments.columnType = "uniqueidentifier";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds time columns to table definition
    */
	public any function time(
		required string columnNames,
		string default,
		boolean null
	) {
		arguments.columnType = "time";
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds timestamp columns to table definition
    */
	public any function timestamp(
		required string columnNames,
		string default,
		boolean null,
		string columnType="datetime"
	) {
		local.iEnd = ListLen(arguments.columnNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			arguments.columnName = ListGetAt(arguments.columnNames,local.i);
			column(argumentCollection=arguments);
		}
		return this;
	}

	/**
    * adds CFWheels convention automatic timestamp and soft delete columns to table definition
    */
	public any function timestamps() {
		timestamp(columnNames="createdat,updatedat,deletedat",null=true);
		return this;
	}

	/**
    * adds integer reference columns to table definition and creates foreign key constraints
    */
	public any function references(
		required string referenceNames,
		string default,
		boolean null="false",
		boolean polymorphic="false",
		boolean foreignKey="true",
		string onUpdate="",
		string onDelete=""
	) {
		local.iEnd = ListLen(arguments.referenceNames);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			local.referenceName = ListGetAt(arguments.referenceNames,local.i);

			// get all possible arguments for the column
			local.columnArgs = {};
			for (local.arg in ListToArray("columnType,default,null,limit,precision,scale"))
				if (StructKeyExists(arguments, local.arg))
					local.columnArgs[local.arg] = arguments[local.arg];

			// default the column to an integer if not provided
			if (!StructKeyExists(local.columnArgs, "columnType"))
				local.columnArgs.columnType = "integer";

			column(columnName = local.referenceName & "id", argumentCollection=local.columnArgs);

			if(arguments.polymorphic)
				column(columnName=local.referenceName & "type",columnType="string");

			if(arguments.foreignKey && !arguments.polymorphic) {
				local.referenceTable = pluralize(local.referenceName);
				local.foreignKey = CreateObject("component","ForeignKeyDefinition").init(adapter=this.adapter,table=this.name,referenceTable=local.referenceTable,column="#local.referenceName#id",referenceColumn="id",onUpdate=arguments.onUpdate,onDelete=arguments.onDelete);
				ArrayAppend(this.foreignKeys,local.foreignKey);
			}
		}
		return this;
	}

	/**
    * creates the table in the database
    */
	public void function create() {
		if(this.force) {
			$execute(this.adapter.dropTable(this.name));
			announce("Dropped table #LCase(this.name)#");
		}
		$execute(this.adapter.createTable(name=this.name, primaryKeys=this.primaryKeys, columns=this.columns, foreignKeys=this.foreignKeys));
		announce("Created table #LCase(this.name)#");
		local.iEnd = ArrayLen(this.foreignKeys);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			announce("--> added foreign key #this.foreignKeys[local.i].name#");
		}
	}

	/**
    * alters existing table in the database
    */
	public void function change(boolean addColumns="false") {
		local.existingColumns = $getColumns(this.name);
		local.iEnd = ArrayLen(this.columns);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			if(arguments.addColumns || !ListFindNoCase(local.existingColumns,this.columns[local.i].name)) {
				$execute(this.adapter.addColumnToTable(name=this.name,column=this.columns[local.i]));
				announce("Added column #this.columns[local.i].name# to table #this.name#");
			} else {
				$execute(this.adapter.changeColumnInTable(name=this.name,column=this.columns[local.i]));
				announce("Changed column #this.columns[local.i].name# in table #this.name#");
			}
		}
		local.iEnd = ArrayLen(this.foreignKeys);
		for (local.i=1; local.i <= local.iEnd; local.i++) {
			$execute(this.adapter.addForeignKeyToTable(name=this.name,foreignKey=this.foreignKeys[local.i]));
			announce("Added foreign key #this.foreignKeys[local.i].name# to table #this.name#");
		}
	}
}