using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Entity.Abstract
{
    public abstract class BaseEntity
    {
        public DateTime EntryTime { get; set; }= DateTime.Now;
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
    }
}
