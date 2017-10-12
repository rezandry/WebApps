# WebApps Using C# and ASP.NET 4.5

### Feature
1. Calculator
2. Keyword note using Sqlite3

### Guide
1. Clone this repository
2. Change .vs/config/applicationhost.config with your custom domain
``` HTML
<site name="WebApplication3" id="2">
    <application path="/" applicationPool="Clr4IntegratedAppPool">
        <virtualDirectory path="/" physicalPath="c:\users\rezaandriyunanto\documents\visual studio 2015\Projects\WebApplication3\WebApplication3" />
    </application>
    <bindings>
        <binding protocol="http" bindingInformation="*:80:reza.xtremax.com" />
    </bindings>
</site>
```
3. Add your custom domain in C://System32/drivers/etc/hosts
```
127.0.0.1     reza.xtremax.com
```
4. Change your Project Setting (Project > <NameProject> Properties > Web > Servers) with your custom url
5. Click Create Virtual Directory
6. Make sure your custom domain in hots, applicationhost.config and project setting is same
