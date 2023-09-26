--'986' kimliðine sahip Yönetici altýnda çalýþan tüm çalýþanlarýn EmpId ve FullName bilgilerini getiren bir SQL sorgusu yazýn.
select EmpID,[FullName]
From EmployeeDetails D
Where D.ManegerID =986

--- EmployeeSalary tablosundan farklý projeleri getiren bir SQL sorgusu yazýn.
select Project
 from EmployeeSalary S,EmployeeDetails D	
 where S.EmpID = D.EmpID AND Salary <11000
 
 --'P1' projesinde çalýþan çalýþan sayýsýný getiren bir SQL sorgusu yazýn
 Select Project,COUNT(Project)
 from EmployeeSalary
 group by Project
 having COUNT(Project)>1

 --- Çalýþanlarýn en yüksek, en düþük ve ortalama maaþýný bulan bir SQL sorgusu yazýn
 select MAX(Salary),MIN(Salary),AVG(Salary)
 from EmployeeSalary

 --Maaþý 9000 ile 15000 aralýðýnda olan çalýþanlarýn kimlik bilgisini bulan bir SQL sorgusu yazýn
 From EmployeeDetails D,EmployeeSalary S
 Where D.EmpID = S.EmpID AND 9000<Salary  AND Salary<15000

 --Toronto'da yaþayan ve ManagerId'si 321 olan yönetici altýnda çalýþan çalýþanlarý getiren bir SQL sorgusu yazýn.
 select*
 From EmployeeDetails D
 where D.ManegerID =321 AND D.City ='Toronto'

 --Ya Kaliforniya'da yaþayan ya da ManagerId'si 321 olan bir yönetici altýnda çalýþan tüm çalýþanlarý getiren bir SQL sorgusu yazýn
select*
From EmployeeDetails D
where D.ManegerID =321 OR D.City ='CaliFornia'


--P1 dýþýndaki projelerde çalýþan tüm çalýþanlarý getiren bir SQL sorgusu yazýn.
 Select*
 From EmployeeDetails D,EmployeeSalary S
 Where D.EmpID = S.EmpID AND Project != 'P1'
 
 --Her çalýþanýn toplam maaþýný, Salary ve Variable deðerlerini ekleyerek görüntüleyen bir SQL sorgusu yazýn. Select SUM(Salary)+SUM(Variable),FullName
 from [ACUN_MEDYA].[dbo].[EmployeeSalary] S,[ACUN_MEDYA].[dbo].[EmployeeDetails] D
 Where S.EmpID=D.EmpID
group by FullName

-- Ýsmi herhangi iki karakterle baþlayan, ardýndan "hn" metni gelen ve herhangi birkarakter dizisi ile biten çalýþanlarý getiren bir SQL sorgusu yazýn.
Select*
From [ACUN_MEDYA].[dbo].EmployeeDetails D
Where D.FullName Like '__hn%'

--'EmployeeDetails' ve 'EmployeeSalary' tablolarýnýn herhangi birinde bulunanEmpIds bilgisini getiren bir SQL sorgusu yazýn.SELECT EmpID FROM [ACUN_MEDYA].[dbo].EmployeeSalary
Union ALL
SELECT EmpID FROM [ACUN_MEDYA].[dbo].EmployeeDetails
Where EmpID > 421