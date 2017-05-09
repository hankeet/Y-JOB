using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.IBLL
{
    public interface IBaseService<T> where T : class, new()
    {
        IQueryable<T> Get(Expression<Func<T, bool>> wherelambada);



        IQueryable<T> GetPage<S>(int pageSize, int pageIndex, out int total, Expression<Func<T, bool>> whereLambda, Expression<Func<T, S>> orderByLamba, bool isAsc);

        T Add(T entity);
        bool Update(T entity);

        bool Delete(T entity);
    }
}
