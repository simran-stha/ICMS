using ICMS.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ICMS.DAL;

namespace ICMS.BLL
{
    public class EmployeeBLL
    {
        //public readonly IEmployeeRepository _employeeRepository;  //datasource - EmployeeRepository
        //public EmployeeBLL()
        //{
        // _employeeRepository = new EmployeeRepository(new ICMSDBContext());

        ////}
        // public EmployeeBLL(IEmployeeRepository employeeRepository)
        // {
        //     _employeeRepository = employeeRepository;
        // }

        // }
        public readonly EmployeeRepository _objEmployeeRepository;

        public EmployeeBLL()
        {
            _objEmployeeRepository = new EmployeeRepository();
        }
        public IEnumerable<Employee> GetAllActiveEmployee()
        {
            var empData = _objEmployeeRepository.GetAll();
            var ActiveEmployees = empData.Where(x => x.Gender == "male");
            return ActiveEmployees.ToList();
        }
    }
}
    

