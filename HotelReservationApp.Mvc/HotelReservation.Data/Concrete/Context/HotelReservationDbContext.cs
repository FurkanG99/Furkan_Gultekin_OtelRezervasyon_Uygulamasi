using HotelReservation.Entity.Concrete;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Data.Concrete.Context
{
    public class HotelReservationDbContext : IdentityDbContext
    {
        public HotelReservationDbContext(DbContextOptions options) : base(options)
        {

        }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<Otel> Otels { get; set; }
        public DbSet<Reservation> Reservations { get; set; }
        public DbSet<Room> Rooms { get; set; }

    }
}
