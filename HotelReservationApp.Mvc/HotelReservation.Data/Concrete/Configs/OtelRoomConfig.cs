using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelReservation.Data.Concrete.Configs
{
    public class OtelRoomConfig : IEntityTypeConfiguration<OtelRoom>
    {
        public void Configure(EntityTypeBuilder<OtelRoom> builder)
        {
            throw new NotImplementedException();
        }
    }
}
