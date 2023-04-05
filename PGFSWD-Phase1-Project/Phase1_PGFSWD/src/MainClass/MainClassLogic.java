package MainClass;

import java.io.IOException;
import java.util.Scanner;

import BusinessLogic.BusinessLogicRun;
import CustomException.CheckedExceptionForBusiness;

public class MainClassLogic {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {
			String ch = null;
			String ch2 = null;
			BusinessLogicRun bl=new BusinessLogicRun();
			System.out.println("********************************************************************************");
			System.out.println("*                                           Welcome                            *");
			System.out.println("*                           To Lockers Pvt. Ltd. File User and Manager         *");
			System.out.println("*                                           Developed By                       *");
			System.out.println("*        RUPAL ROOPRAJ GUPTA, EMAIL Address - sriradharasbihariji@gmail.com    *");
			System.out.println("*                                                                              *");
			System.out.println("*                                                                              *");
			System.out.println("********************************************************************************");
			do {
				System.out.println("Please Select One of the Following Options ---------------------");
				System.out.println();
				System.out.println("Please Press From Following Options ---------------------------- ");
				System.out.println();
				System.out.println("Press: 1 --> View All the Files in the Folder in Ascending Manner");
				System.out.println();
				System.out.println("Press: 2 --> Get an Interface Containing More Options------------");
				System.out.println();
				System.out.println("Press: 3 --> EXIT -----------------------------------------------");
				System.out.println();
					ch = sc.nextLine();
				switch (ch) {
				case "1":
						bl.retrieveFiles();
						System.out.println();
						break;
				case "2":
					do {
						System.out.println();
						System.out.println(" What More Operation Do You Want to Perform From Below Operations");
						System.out.println();
						System.out.println(" Details of the User Interface");
						System.out.println("-----------------------------------------------------");
						System.out.println("-----------------------------------------------------");
						System.out.println("-----------------------------------------------------");
						System.out.println();
						System.out.println(" Press: 1 Add a File to the Application              ");
						System.out.println(" Press: 2 Delete a File From the Application         ");
						System.out.println(" Press: 3 Search a File From the Application         ");
						System.out.println(" Press: 4 Go Back to Main Menu                     \n");
						System.out.println(" Please Enter Your Appropriate Choice Between 1 to 4 ");
						
							ch2 = sc.nextLine();
							
						switch(ch2) {
						case "1":
							System.out.println(" Please Mention the File Name Which is to be Created ");
							String addfile = sc.nextLine();
							try {
								bl.addFile(addfile);
							} catch (IOException e) {
								System.out.println(e.getMessage());
							}
							continue;
						case "2":
							System.out.println(" Please Mention the File Name Which is to be Deleted ");
							String deletefile = sc.nextLine();
							try {
								bl.deleteFile(deletefile);
							} catch (CheckedExceptionForBusiness e) {
								System.out.println(e.getMessage());;
							}
							continue;
						case "3":
							System.out.println(" Please Mention the File Name Which is to be Searched ");
							String searchfile = sc.nextLine();
							 bl.searchFile(searchfile);
							 continue;
							
						case "4":System.out.println(" Going Back to Main Menu --------------------- \n");
								break;
								
						default:System.out.println(" Wrong Choice....!!! Choice Should And Must be Between 1 to 4 Only ");
								continue;
						}
						break;
					}while(ch2 != "4");
					break;
				case "3":
					System.out.println("\n ....!!! Thank You For Using Our Product Application...... !!!!\n");
					System.exit(0);
				
				default:System.out.println(" Wrong Choice....!!! Choice Should And Must be Between 1 to 3 Only ");
					System.out.println();
				break;
				}
			} while (ch != "3");
		}

	}

}
