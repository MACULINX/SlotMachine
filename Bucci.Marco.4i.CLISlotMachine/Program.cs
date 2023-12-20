using Bucci.Marco._4i.LibSlotMachine;
using Figgle;



internal partial class Program
{
    SlotMachine slotmachine = new();
    int count1 = 0;
    int count2 = 0; 
    int count3 = 0;
    bool rell1 = false;
    bool rell3 = false;
    bool rell2 = false;

    private static void Main() 
    {
        Program pr = new();
        pr.MainProgram();
    }

    private void MainProgram()
    {
        bool menu = true;

        Console.WriteLine(FiggleFonts.Standard.Render("SlotMachine"));

        while (menu)
        {

            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.DarkYellow;
            Console.WriteLine(FiggleFonts.Standard.Render($"\t {slotmachine.Rell1} | {slotmachine.Rell2} | {slotmachine.Rell3}"));
            Console.ResetColor();

            Console.WriteLine($"\t Credito rimasto {slotmachine.Balance}");
            Console.WriteLine($"\t Ultima vincita {slotmachine.LastWin}");
            Console.WriteLine();

            Console.WriteLine("1- Gira la Ruota");

            Console.WriteLine("2- Blocca la prima lettera");
            Console.WriteLine("3- Blocca la seconda lettera");
            Console.WriteLine("4- Blocca la terza lettera");
            Console.WriteLine();




            switch (Console.ReadKey().KeyChar)
            {
                case '1':
                    try
                    {
                        slotmachine.SpinSlotMachine(rell1, rell2, rell3);
                        Checker();
                        Console.Clear();
                    }
                    catch (Exception e)
                    {
                        Console.Clear();

                        Console.WriteLine(e.Message);
                        Console.WriteLine("Vuoi ricomanciare da capo? (y / n)");
                    RIPETI:
                        switch (Console.ReadKey().KeyChar)
                        {
                            case 'y':
                                slotmachine = new SlotMachine();
                                break;

                            case 'n':
                                Console.Clear();
                                Console.WriteLine(FiggleFonts.Standard.Render("Arrivederci"));
                                Console.ReadKey();
                                menu = false;
                                break;

                            default:
                                Console.WriteLine("Devi scegliere tra y (si) e n (no)");
                                goto RIPETI;
                        }
                    }
                    break;


                case '2':
                    if (rell1 == false && !(rell2 == true && rell3 == true))
                        rell1 = true;
                    else
                        rell1 = false;

                    Console.WriteLine(" - Hai bloccato la prima lettera per 2 turni");
                    break;

                case '3':
                    if (rell2 == false && !(rell1 == true && rell3 == true))
                        rell2 = true;
                    else
                        rell2 = false;

                    Console.WriteLine(" - Hai bloccato la seconda lettera per 2 turni");

                    break;

                case '4':
                    if (rell3 == false && !(rell1 == true && rell2 == true))
                        rell3 = true;
                    else
                        rell3 = false;

                    Console.WriteLine(" - Hai bloccato la terza lettera per 2 turni");
                    break;

            }
        }
    }


    public void Checker() 
    {
        if (rell1 == true)
            count1++;

        if (count1 == 2)
        {
            rell1 = false;
            count1 = 0;
        }

        if (rell2 == true)
            count2++;

        if (count2 == 2)
        {
            rell2 = false;
            count2 = 0;
        }

        if (rell3 == true)
            count3++;

        if (count3 == 2)
        {
            rell3 = false;
            count3 = 0;
        }
    }
}



