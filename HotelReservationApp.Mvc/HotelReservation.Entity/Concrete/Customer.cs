using HotelReservation.Entity.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Entity.Concrete
{
    public class Customer:BaseEntity
    {
        public int Id { get; set; }
        public string LastName { get; set;}
        public string Name { get; set;}
        public string Address { get; set;}
    }
}
