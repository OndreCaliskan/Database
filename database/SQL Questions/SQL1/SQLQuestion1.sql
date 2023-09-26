--'986' kimli�ine sahip Y�netici alt�nda �al��an t�m �al��anlar�n EmpId ve FullName bilgilerini getiren bir SQL sorgusu yaz�n.
select EmpID,[FullName]
From EmployeeDetails D
Where D.ManegerID =986

--- EmployeeSalary tablosundan farkl� projeleri getiren bir SQL sorgusu yaz�n.
select Project
 from EmployeeSalary S,EmployeeDetails D	
 where S.EmpID = D.EmpID AND Salary <11000
 
 --'P1' projesinde �al��an �al��an say�s�n� getiren bir SQL sorgusu yaz�n
 Select Project,COUNT(Project)
 from EmployeeSalary
 group by Project
 having COUNT(Project)>1

 --- �al��anlar�n en y�ksek, en d���k ve ortalama maa��n� bulan bir SQL sorgusu yaz�n
 select MAX(Salary),MIN(Salary),AVG(Salary)
 from EmployeeSalary

 --Maa�� 9000 ile 15000 aral���nda olan �al��anlar�n kimlik bilgisini bulan bir SQL sorgusu yaz�n
 From EmployeeDetails D,EmployeeSalary S
 Where D.EmpID = S.EmpID AND 9000<Salary  AND Salary<15000

 --Toronto'da ya�ayan ve ManagerId'si 321 olan y�netici alt�nda �al��an �al��anlar� getiren bir SQL sorgusu yaz�n.
 select*
 From EmployeeDetails D
 where D.ManegerID =321 AND D.City ='Toronto'

 --Ya Kaliforniya'da ya�ayan ya da ManagerId'si 321 olan bir y�netici alt�nda �al��an t�m �al��anlar� getiren bir SQL sorgusu yaz�n
select*
From EmployeeDetails D
where D.ManegerID =321 OR D.City ='CaliFornia'


--P1 d���ndaki projelerde �al��an t�m �al��anlar� getiren bir SQL sorgusu yaz�n.
 Select*
 From EmployeeDetails D,EmployeeSalary S
 Where D.EmpID = S.EmpID AND Project != 'P1'
 
 --Her �al��an�n toplam maa��n�, Salary ve Variable de�erlerini ekleyerek g�r�nt�leyen bir SQL sorgusu yaz�n. Select SUM(Salary)+SUM(Variable),FullName
 from [ACUN_MEDYA].[dbo].[EmployeeSalary] S,[ACUN_MEDYA].[dbo].[EmployeeDetails] D
 Where S.EmpID=D.EmpID
group by FullName

-- �smi herhangi iki karakterle ba�layan, ard�ndan "hn" metni gelen ve herhangi birkarakter dizisi ile biten �al��anlar� getiren bir SQL sorgusu yaz�n.
Select*
From [ACUN_MEDYA].[dbo].EmployeeDetails D
Where D.FullName Like '__hn%'

--'EmployeeDetails' ve 'EmployeeSalary' tablolar�n�n herhangi birinde bulunanEmpIds bilgisini getiren bir SQL sorgusu yaz�n.SELECT EmpID FROM [ACUN_MEDYA].[dbo].EmployeeSalary
Union ALL
SELECT EmpID FROM [ACUN_MEDYA].[dbo].EmployeeDetails
Where EmpID > 421