# Visual Studio / C# Notes


If you want to do something like:

```csharp
DataTable customerTable = GetCustomers();
```

and have it come before the:

```csharp
public Form1()

{

}
```

method, you need to make sure that the method you're calling is a `private static` one.






Dropdown for a combobox
-----------------------

```csharp
comboBox1.DataSource = MyTable;
comboBox1.ValueMember = "my table header";
comboBox1.DisplayMember = "my other table header"; //optional
```



Autocomplete a combobox
-----------------------

NOTE: These options can be set in the properties explorer instead of in the code, if you want.

NOTE: I think this method might only work after a dropdown is already set.

```csharp
comboBox1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
comboBox1.AutoCompleteSource = AutoCompleteSource.ListItems;
```



Show a form as a modal dialog
-----------------------------

Very similar to showing a normal form.

Instead of doing:

```csharp
Form2 form2 = new Form2();
form2.Show();
```

Do this:

```csharp
Form2 form2 = new Form2();
form2.ShowDialog();
```



Accessors / Getters/Setters
---------------------------

```csharp
public string VariableName
{
  get { return name; }
  set { name = value; }
}
```





