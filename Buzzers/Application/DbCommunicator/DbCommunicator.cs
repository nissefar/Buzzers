﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Application.MapperClasses;
using Domain.Users;

namespace Application.DbCommunicator
{
    public class DbCommunicator : IDbCommunicator
    {
        public void CreateBee(Bee member)
        {
            using (var context = new Entities())
            {
                context.hivemembers.Add(HivememberEntityMapper.MapBeeToHivemember(member));
                context.SaveChanges();
            }
        }

        public void CreateHoneypot(Honeypot member)
        {
            using (var context = new Entities())
            {
                context.hivemembers.Add(HivememberEntityMapper.MapHoneypotToHivemember(member));
                context.SaveChanges();
            }
        }

        public bool Delete(int id)
        {
            using (var context = new Entities())
            {
                var toDelete = context.hivemembers.SingleOrDefault(a => a.id == id);

                if (toDelete == null)
                    return false;

                context.hivemembers.Remove(toDelete);
                context.SaveChanges();

                return true;
            }
        }

        //TODO hent brugerpreference mm. fra database og brug denne data til at kalde stored procedure
        public Bee FindBee(int id)
        {
            throw new NotImplementedException();
        }
        
        //TODO hent brugerpreference mm. fra database og brug denne data til at kalde stored procedure
        public Honeypot FindHoneypot(int id)
        {
            throw new NotImplementedException();
        }

        public int Login(string email, string password)
        {
            using (var context = new Entities())
            {
                var queer = context.hivemembers
                    .Where(a => a.email == email)
                    .FirstOrDefault();

                if (queer == null) return 0;

                var query = context.userlogins
                    .Where(e => e.userid == queer.id && e.pass == password)
                    .FirstOrDefault();

                return query.userid ?? 0;
            }
        }
    }
}
