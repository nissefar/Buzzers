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
        public void CreateBee(Bee member, string password)
        {
            using (var context = new Entities())
            {
                context.CreateUserWithLogin(1, (int)member.Gender, member.FirstName, member.LastName, member.Email, member.BirthDate, password);
            }
        }

        public void CreateHoneypot(Honeypot member, string password)
        {
            using (var context = new Entities())
            {
                //TODO: Attach job title
                context.CreateUserWithLogin(2, (int)member.Gender, member.FirstName, member.LastName, member.Email, member.BirthDate, password);
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

        public Hivemember Login(string email, string password)
        {
            using (var context = new Entities())
            {
                var queer = context.hivemembers
                    .Where(a => a.email == email)
                    .FirstOrDefault();

                if (queer == null) return null;

                var query = context.userlogins
                    .Where(e => e.userid == queer.id && e.pass == password)
                    .FirstOrDefault();

                if (query.hivemember.usertypeid == 1)
                {
                    return HivememberEntityMapper.MapHivememberToBee(query.hivemember);
                }
                else if (query.hivemember.usertypeid == 2)
                {
                    return HivememberEntityMapper.MapHivememberToHoneypot(query.hivemember);
                }
                else
                {
                    return null;
                }
            }
        }
    }
}
