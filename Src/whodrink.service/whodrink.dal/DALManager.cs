using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace whodrink.dal
{
    public class DALManager
    {
        private static DALManager _instance;
        public DALManager()
        {

        }

        public static DALManager getInstance()
        {
            if (_instance == null)
            {
                _instance = new DALManager();
            }
            return _instance;
        }
        public bool GetSampleData()
        {
            try
            {
                using (WhoDrinkContext db = new WhoDrinkContext())
                {
                    db.Drinkers.Count();
                    return true;
                }
            }
            catch (Exception)
            {

                return false;

            }
        }
    }
}
