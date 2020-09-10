using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace ProjetoFinal.Classes.FunctionClasses
{
    public class PassEncrypt
    {
        public static string EncryptString(string Message)
        {
            string Passphrase = "formacao";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();


            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below


            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));


            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();



            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;



            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);



            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }



            // Step 6. Return the encrypted string as a base64 encoded string



            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }

        public static string DecryptString(string Message)
        {
            string Passphrase = "formacao";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Setup the decoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]

            Message = Message.Replace("KKK", "+");
            Message = Message.Replace("JJJ", "/");
            Message = Message.Replace("III", "\\");


            byte[] DataToDecrypt = Convert.FromBase64String(Message);

            // Step 5. Attempt to decrypt the string
            try
            {
                ICryptoTransform Decryptor = TDESAlgorithm.CreateDecryptor();
                Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the decrypted string in UTF8 format
            return UTF8.GetString(Results);
        }


        public static string GenerateRandomString(int minLength, int maxLength, int minLCaseCount, int minUCaseCount, int minNumCount, int minSpecialCount)
        {
            char[] randomString;

            const string LCaseChars = "abcdefgijkmnopqrstwxyz";
            const string UCaseChars = "ABCDEFGHJKLMNPQRSTWXYZ";
            const string NumericChars = "123456789";
            const string SpecialChars = "*$-+?_&=!%{}/";

            Hashtable charGroupsUsed = new Hashtable();
            charGroupsUsed.Add("lcase", minLCaseCount);
            charGroupsUsed.Add("ucase", minUCaseCount);
            charGroupsUsed.Add("num", minNumCount);
            charGroupsUsed.Add("special", minSpecialCount);

            // Because we cannot use the default randomizer, which is based on the
            // current time (it will produce the same "random" number within a
            // second), we will use a random number generator to seed the
            // randomizer.

            // Use a 4-byte array to fill it with random bytes and convert it then
            // to an integer value.
            byte[] randomBytes = new byte[4];

            // Generate 4 random bytes.
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            rng.GetBytes(randomBytes);

            // Convert 4 bytes into a 32-bit integer value.
            int seed = (randomBytes[0] & 0x7f) << 24 |
                        randomBytes[1] << 16 |
                        randomBytes[2] << 8 |
                        randomBytes[3];

            // Create a randomizer from the seed.
            Random random = new Random(seed);

            // Allocate appropriate memory for the password.
            if (minLength < maxLength)
            {
                randomString = new char[random.Next(minLength, maxLength + 1)];
            }
            else
            {
                randomString = new char[minLength];
            }

            int requiredCharactersLeft = minLCaseCount + minUCaseCount + minNumCount + minSpecialCount;

            // Build the password.
            for (int i = 0; i < randomString.Length; i++)
            {
                string selectableChars = "";

                // if we still have plenty of characters left to acheive our minimum requirements.
                if (requiredCharactersLeft < randomString.Length - i)
                {
                    // choose from any group at random
                    selectableChars = LCaseChars + UCaseChars + NumericChars + SpecialChars;
                }
                else // we are out of wiggle room, choose from a random group that still needs to have a minimum required.
                {
                    // choose only from a group that we need to satisfy a minimum for.
                    foreach (DictionaryEntry charGroup in charGroupsUsed)
                    {
                        if ((int)charGroup.Value > 0)
                        {
                            switch (charGroup.Key.ToString())
                            {
                                case "lcase":
                                    selectableChars += LCaseChars;
                                    break;
                                case "ucase":
                                    selectableChars += UCaseChars;
                                    break;
                                case "num":
                                    selectableChars += NumericChars;
                                    break;
                                case "special":
                                    selectableChars += SpecialChars;
                                    break;
                            }
                        }
                    }
                }

                // Now that the string is built, get the next random character.
                char nextChar = selectableChars[random.Next(0, selectableChars.Length - 1)];

                // Tac it onto our password.
                randomString[i] = nextChar;

                // Now figure out where it came from, and decrement the appropriate minimum value.
                if (LCaseChars.Contains(nextChar))
                {
                    charGroupsUsed["lcase"] = (int)charGroupsUsed["lcase"] - 1;
                    if ((int)charGroupsUsed["lcase"] >= 0)
                    {
                        requiredCharactersLeft--;
                    }
                }
                else if (UCaseChars.Contains(nextChar))
                {
                    charGroupsUsed["ucase"] = (int)charGroupsUsed["ucase"] - 1;
                    if ((int)charGroupsUsed["ucase"] >= 0)
                    {
                        requiredCharactersLeft--;
                    }
                }
                else if (NumericChars.Contains(nextChar))
                {
                    charGroupsUsed["num"] = (int)charGroupsUsed["num"] - 1;
                    if ((int)charGroupsUsed["num"] >= 0)
                    {
                        requiredCharactersLeft--;
                    }
                }
                else if (SpecialChars.Contains(nextChar))
                {
                    charGroupsUsed["special"] = (int)charGroupsUsed["special"] - 1;
                    if ((int)charGroupsUsed["special"] >= 0)
                    {
                        requiredCharactersLeft--;
                    }
                }
            }
            return new string(randomString);
        }
    }
}