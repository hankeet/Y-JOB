using App_manager.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.DAO
{
   public class BaseDao<T> where T : class, new()
    {
        public JianZhiEntities yc = new JianZhiEntities();/*{ get { return DbContextFactory.GetCurrentDbContext(); } }*/


        public IQueryable<T> Get(Expression<Func<T, bool>> wherelambada)
        {
            return yc.Set<T>().Where(wherelambada).AsQueryable();
        }
        public IQueryable<T> GetPage<S>(int pageSize, int pageIndex, out int total, Expression<Func<T, bool>> whereLambada, Expression<Func<T, S>> orderByLamabada, bool isAsc)
        {
            total = yc.Set<T>().Where(whereLambada).Count();
            if (isAsc)
            {
                var temp = yc.Set<T>().Where(whereLambada).OrderBy<T, S>(orderByLamabada).Skip(pageSize * (pageIndex - 1)).Take(pageSize).AsQueryable();
                return temp;
            }
            else
            {
                var temp = yc.Set<T>().Where(whereLambada).OrderByDescending<T, S>(orderByLamabada).Skip(pageSize * (pageIndex - 1)).Take(pageSize).AsQueryable();
                return temp;
            }
        }
        public T Add(T entity)
        {
            yc.Set<T>().Add(entity);
            yc.SaveChanges();
            return entity;
        }
        public bool Update(T entity)
        {
            yc.Entry(entity).State = EntityState.Modified;
            return true;
        }
        public bool Delete(T entity)
        {
            yc.Entry(entity).State = EntityState.Deleted;
            return true;
        }
    }
}
