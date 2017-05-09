using App_manager.DalFactory;
using App_manager.IDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.BLL
{
    public abstract class BaseService<T> where T : class, new()
    {
        public IBaseDal<T> CurrentDal { get; set; }
        public IDbSession dbSession
        {
            get
            {
                return DbSessionFactory.GetCurrentDbSession();
            }
        }
        //    //public BaseService(IDbSession dBSession)//基类的构造函数
        //    //{
        //    //    dbSession = dBSession;
        //    //    SetCurrentDal();
        //    //}
        public BaseService()
        {
            SetCurrentDal();
        }
        public abstract void SetCurrentDal();//抽象方法要求子类必须实现



        public IQueryable<T> Get(Expression<Func<T, bool>> whereLambada)
        {
            return CurrentDal.Get(whereLambada);
        }



        public IQueryable<T> GetPage<S>(int pageSize, int pageIndex, out int total, Expression<Func<T, bool>> whereLambda, Expression<Func<T, S>> orderByLamba, bool isAsc)
        {
            return CurrentDal.GetPage(pageSize, pageIndex, out total, whereLambda, orderByLamba, isAsc);
        }

        public T Add(T entity)
        {
            dbSession.SaveChanges();
            CurrentDal.Add(entity);
            return entity;

        }
        public bool Update(T entity)
        {

            CurrentDal.Update(entity);
            return dbSession.SaveChanges() > 0;
        }

        public bool Delete(T entity)
        {
            CurrentDal.Delete(entity);
            return dbSession.SaveChanges() > 0;
        }

        //}
    }
}
