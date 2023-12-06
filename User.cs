using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW_G15
{
    public class User
    {
        public string userName { get; set; }

        public string password { get; set; }

        public string reEnterPassword { get; set; }

        public string email { get; set; }

        public string phoneNumber { get; set; }

        public string address { get; set; }

        public User() { }

        public User(string userName, string password, string reEnterPassword, string email, string phoneNumber, string address)
        {
            this.userName = userName;
            this.password = password;
            this.reEnterPassword = reEnterPassword;
            this.email = email;
            this.phoneNumber = phoneNumber;
            this.address = address;
        }
    }
}