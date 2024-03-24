using HotelReservation.Entity.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Entity.Concrete
{
    public class Otel : BaseEntity, IMainEntity
    {
        public int Id { get; set; }
        public string OtelName { get; set; }
        public bool IsActive { get; set; }
        public string OtelAdress { get; set; }
        public DateTime CreatedDate { get; set; }
        public List<Room> Rooms { get; set; }

    }
}
