# Get a value from another form


Form1 has a variable (let's say "string MyString") you want.

Form2 is where you want to display the variable.

Make a new public static variable of the same type of your source variable in Form1:

```csharp
public static string MyNewString = new string();
```

After your variable contains a value, set your new public static variable equal to your source variable:

```csharp
MyNewString = MyString;
```

In Form2, you can then reference this new variable by preceeding it with "Form1.":

```csharp
Form1.MyNewString
```

