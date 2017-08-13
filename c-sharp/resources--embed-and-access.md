# Embed and access a resource (text file example)


1. Click `Project > Add Existing Item` then select your desired file.

2. Select it in the Solution Explorer (upper-right of screen), then edit the "Build Action" property to say "embedded resource"

3. Make sure these 'using's are at the top of your code:

```csharp
 using System.Reflection; //needed for Assembly
 using System.IO; //needed for StreamReader
```

4. Access it like:

```csharp
using (Stream stream = Assembly.GetExecutingAssembly().GetManifestResourceStream("MyNameSpace.MyFileName.txt"))
using (StreamReader reader = new StreamReader(stream))
{
  string result = reader.ReadToEnd(); //example
}
```

