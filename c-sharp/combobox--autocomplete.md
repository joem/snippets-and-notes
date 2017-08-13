# Autocomplete a combobox


NOTE: These options can be set in the properties explorer instead of in the code, if you want.

NOTE: I think this method might only work after a dropdown is already set.

```csharp
comboBox1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
comboBox1.AutoCompleteSource = AutoCompleteSource.ListItems;
```

