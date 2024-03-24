using HotelReservation.Entity.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Entity.Concrete
{
    public class Room:BaseEntity
    {
        public int Id { get; set; }
        public int OtelId { get; set; }
        public int RoomId { get; set; }
        public bool RoomIsEmpty { get; set; }


    }
}
