using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Entity.Concrete
{
    public class Reservation
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public DateTime reservationDate { get; set; }
        public int roomId { get; set; }
        public int OtelId { get; set; }
        public DateTime ReservationStart {  get; set; }
        public DateTime ReservationEnd { get; set;}
        public bool IsAprooved { get; set; }

    }
}
