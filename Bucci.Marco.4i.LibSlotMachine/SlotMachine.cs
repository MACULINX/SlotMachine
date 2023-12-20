namespace Bucci.Marco._4i.LibSlotMachine
{
    public class SlotMachine
    {

        public int Balance { get; set; }
        public int LastWin { get; set; }
        public char Rell1 { get; set; }
        public char Rell2 { get; set; }
        public char Rell3 { get; set; }

        private const int JACKPOT = 100;
        private const int HARDWIN = 50;


        public SlotMachine()
        {
            Balance = 10;
            LastWin = 0;
            Rell1 = Rell2 = Rell3 = 'A';
        }

        public void SpinSlotMachine()
        {
            if (Balance == 0)
                throw new Exception("Hai finito il saldo a disposizione");

            Balance--;

            Random r = new Random();

            Rell1 = (char)r.Next(65, 91);
            Rell2 = (char)r.Next(65, 91);
            Rell3 = (char)r.Next(65, 91);

            if (JackPot())
                AddWin(JACKPOT);

            else if (HardWin())
                AddWin(HARDWIN);

            else if (SimpleWin())
                AddWin(Rell1 - 64);

            else if (NoLost())
                AddWin(1);

            else
                LastWin = 0;

        }

        public void SpinSlotMachine(bool lock1, bool lock2, bool lock3)
        {
            if (Balance == 0)
                throw new Exception("Hai finito il saldo a disposizione");

            Balance--;

            Random r = new Random();

            if (!lock1)
                Rell1 = (char)r.Next(65, 91);

            if (!lock2)
                Rell2 = (char)r.Next(65, 91);

            if (!lock3)
                Rell3 = (char)r.Next(65, 91);

            if (JackPot())
                AddWin(JACKPOT);

            else if (HardWin())
                AddWin(HARDWIN);

            else if (SimpleWin())
                AddWin((int)Rell1 - 64);

            else if (NoLost())
                AddWin(1);

            else
                LastWin = 0;

        }

        private bool JackPot()
        {
            return (Rell1 == 'Z' && Rell2 == 'Z' && Rell3 == 'Z');
        }

        private bool HardWin()
        {
            return (Rell2 == Rell1 + 1 && Rell3 == Rell2 + 1);
        }
        private bool SimpleWin()
        {
            return (Rell1 == Rell2 && Rell2 == Rell3);
        }

        private bool NoLost()
        {
            return (Rell1 == Rell2 || Rell2 == Rell3 || Rell3 == Rell1);
        }

        private void AddWin(int win)
        {
            Balance += win;
            LastWin = win;
        }

    }
}