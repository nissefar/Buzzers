﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Application.DbCommunicator;
using Domain.Users;
using Domain;
using Application.MapperClasses;
using Domain.Enums;

namespace Application
{
    public class AccountManager : IAccountManager
    {
        private IDbCommunicator _db;
        public AccountManager(IDbCommunicator db)
        {
            _db = db;
        }

        public bool CreateUser(Hivemember member, string password)
        {
            if (member is Bee)
            {
                _db.CreateMember((Bee)member, password);
            }
            else if (member is Honeypot)
            {
                _db.CreateMember((Honeypot)member, password);
            }
            return true;
        }

        public bool DeleteUser(int id)
        {
            return _db.Delete(id);
        }

        public void Edit(Hivemember hivemember)
        {
            _db.Edit(hivemember);
        }

        public Hivemember Login(string email, string password)
        {
            return _db.Login(email, password);
        }

        public Bee GetBee(int id)
        {
            var bee = _db.FindBee(id);
            if (bee != null)
            {
                bee.Images = _db.GetImages(bee.Id);
            }
            return bee;
        }

        public Honeypot GetHoneypot(int id)
        {
            var honeypot = _db.FindHoneypot(id);
            if (honeypot != null)
            {
                honeypot.Images = _db.GetImages(honeypot.Id);
            }
            return honeypot;
        }

        public void Buzz(Hivemember Buzzer, Hivemember Buzzee, bool Buzz)
        {
            _db.CreateBuzz(Buzzer, Buzzee, Buzz);
        }

        public List<Hivemember> GetMatches(Hivemember user)
        {
            var list = new List<Hivemember>();
            var results = _db.GetMatches(user);
            foreach (var item in results)
            {
                if (user.GetType().ToString() == "Domain.Users.Honeypot")
                {
                    list.Add(new Bee()
                    {
                        Id = item.id,
                        FirstName = item.firstname,
                        LastName = item.lastname,
                        Nickname = item.nick,
                        Bio = item.bio,
                        BirthDate = item.birthdate,
                        Gender = (Gender) item.genderid,
                        Images = _db.GetImages(item.id)
                    });
                }
                else if (user.GetType().ToString() == "Domain.Users.Bee")
                {
                    list.Add(new Honeypot()
                    {
                        Id = item.id,
                        FirstName = item.firstname,
                        LastName = item.lastname,
                        Nickname = item.nick,
                        Bio = item.bio,
                        BirthDate = item.birthdate,
                        Gender = (Gender)item.genderid,
                        Images = _db.GetImages(item.id)
                    });
                }
            }
            return list;
        }

        public List<message> GetMessages(Hivemember user, Hivemember chatPartner)
        {
            
            return _db.GetMessages(user, chatPartner);
        }
        public List<ChatMessage> GetChatMessages(Hivemember user, Hivemember chatPartner)
        {
            return HivememberEntityMapper.MapEnitityMessageToChatMessage(_db.GetMessages(user, chatPartner), user, chatPartner);
        }

        public void SendMessage(Hivemember sender, Hivemember reciever, string message)
        {
            _db.SendMessage(sender, reciever, message);
        }
        public MemberStory GetMemberStory() 
        {
            var story = _db.GetMemberstory();
            if (story == null)
            {
                return new MemberStory();
            }
            return new MemberStory(story.imagepath, story.story);
        }
    }
}
