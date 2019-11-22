﻿using Application;
using BuzzerGui.Utility;
using Domain;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuzzerGui.ViewModels
{
    public class LoginViewModel : ViewModelBase, INavigationViewModel
    {
        private IAccountManager _manager;

        private string _email;
        private string _password;

        public MemberStory Story { get; set; }


        public string Email
        {
            get => _email;
            set
            {
                _email = value;
                OnPropertyChanged();
            }
        }

        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand LogInCommand { get; private set; }

        public LoginViewModel(IAccountManager manager)
        {
            _manager = manager;

            LogInCommand = new DelegateCommand(() => LogIn());
            Story = _manager.GetMemberStory();

        }

        private void LogIn()
        {
            var member = _manager.Login(_email, _password);
            if (member != null)
            {

                Messenger.Default.Send(member);
            }
        }
    }
}
