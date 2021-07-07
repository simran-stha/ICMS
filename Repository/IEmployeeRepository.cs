using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ICMS.DAL;


namespace ICMS.Repository
{
    public interface IEmployeeRepository
    {
        //declare methods
        IEnumerable<Employee> GetAll();
        //single record
        Employee GetById(int EmployeeID);
        
        void Insert(Employee employee);
        void Update(Employee employee);
        void Delete(int EmployeeID);
        void Save();

    }
}
