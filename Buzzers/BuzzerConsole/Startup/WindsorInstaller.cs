﻿using Application;
using Application.DbCommunicator;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuzzerConsole.Startup
{
    class WindsorInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Component.For<IAccountManager>()
                .ImplementedBy<AccountManager>()
                .LifestyleTransient());

            container.Register(Component.For<IDbCommunicator>()
                .ImplementedBy<DbCommunicator>());

            container.Register(Component.For<ISession>()
                .ImplementedBy<Session>()
                .LifestyleSingleton());
        }
    }
}
