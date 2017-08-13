# Make a new form programatically


`project > add windows form`

rename the form there if you want. in this example, we'll keep the default Form2

in the handler for whatever you want to open the second form, do:

```csharp
Form2 secondForm = new Form2();
secondForm.Show();
```

(note: if you renamed your form, change those Form2's to the new name)

to make it so you can re-open the form after you close it, you need to make a handler for that forms 'closing' event. find the 'closing' event in the properties viewer (in the 'events' tab!) for that form and double-click it to make a new handler. in that handler, put:

```csharp
this.Hide();
e.Cancel = true;
```

