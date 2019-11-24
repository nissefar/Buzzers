﻿using Application;
using Domain.Enums;
using Domain.Users;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace BuzzerGui.ViewModels
{
    public class SignUpViewModel : ViewModelBase, INavigationViewModel
    {
        private IAccountManager _manager;
        private UserType _userType;

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime Birthday { get; set; }
        public UserType UserType
        {
            get => _userType;
            set
            {
                _userType = value;
                OnPropertyChanged();
            }
        }
        public Gender Gender { get; set; }

        public ICommand SignUpCommand { get; private set; }

        public IList<UserType> UserTypes
        {
            get => Enum.GetValues(typeof(UserType)).Cast<UserType>().ToList();
        }
        public IList<Gender> Genders
        {
            get => Enum.GetValues(typeof(Gender)).Cast<Gender>().ToList();
        }

        public SignUpViewModel(IAccountManager manager)
        {
            _manager = manager;

            SignUpCommand = new DelegateCommand(SignUp, CanSignUp).ObservesProperty(() => UserType);
        }

        private void SignUp()
        {
            switch (UserType)
            {
                case UserType.Honeypot:
                    var bee = new Bee()
                    {
                        FirstName = FirstName,
                        LastName = LastName,
                        Gender = Gender,
                        Email = Email,
                        BirthDate = Birthday
                    };
                    _manager.CreateUser(bee, Password);
                    break;
                case UserType.Bee:
                    var honeypot = new Honeypot()
                    {
                        FirstName = FirstName,
                        LastName = LastName,
                        Gender = Gender,
                        Email = Email,
                        BirthDate = Birthday
                        //jobtitle
                    };
                    _manager.CreateUser(honeypot, Password);
                    break;
                default:
                    break;
            }
        }

        private bool CanSignUp()
        {
            return UserType == UserType.Honeypot || UserType == UserType.Bee;
        }
    }
}
