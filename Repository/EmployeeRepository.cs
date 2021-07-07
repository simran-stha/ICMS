using ICMS.DAL;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace ICMS.Repository
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly ICMSDBContext _context;
        public EmployeeRepository()
        {
            _context = new ICMSDBContext();
        }

        public EmployeeRepository(ICMSDBContext context)
        {
            _context = context;
        }
        public IEnumerable<Employee> GetAll()
        {
            return _context.Employee.ToList();
        }
        public Employee GetById(int EmployeeID)
        {
            return _context.Employee.Find(EmployeeID);
        }
        public void Insert(Employee employee)
        {
            _context.Employee.Add(employee);
        }
        public void Update(Employee employee)
        {
            _context.Entry(employee).State = EntityState.Modified;
        }
        public void Delete(int EmployeeID)
        {
            Employee employee = _context.Employee.Find(EmployeeID);
            _context.Employee.Remove(employee);
        }
        public void Save()
        {
            _context.SaveChanges();
        }
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
               
    }
}