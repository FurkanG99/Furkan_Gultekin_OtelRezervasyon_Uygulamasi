using HotelReservation.Entity.Concrete;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Data.Concrete.Configs
{
    public class OtelConfig : IEntityTypeConfiguration<Otel>
    {
        public void Configure(EntityTypeBuilder<Otel> builder)
        {
            throw new NotImplementedException();
        }
    }
}
