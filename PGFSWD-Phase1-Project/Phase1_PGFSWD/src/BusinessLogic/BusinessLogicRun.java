package BusinessLogic;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

import CustomException.CheckedExceptionForBusiness;

public class BusinessLogicRun {

	public void retrieveFiles() {
		
		 String[] pathnames;

		 	String path = System.getProperty("user.dir");
	        File f = new File(path+ "\\Root\\");
	        System.out.println("\n ----- Accessing the Files --------- \n");
	        if(f.isDirectory()) {
	        	if(f.list().length>0) {
		        pathnames = f.list();
		        Arrays.sort(pathnames);
		        for (String pathname : pathnames) {
		            System.out.println(pathname);
		         }
		        }
			  else { 
				  System.out.println("\n ------ No Files Found in the Root Directory .....!!!!! Please Add the Files ------- "); 
			  }
			 
	        }
	        else {
	        	
	        	f.mkdir();
	        	
	        }
	}
	
	public  void addFile(String name) throws IOException {
		
		String file = name;
		file= file + ".txt";
		String path = System.getProperty("user.dir");
		File f = new File(path+ "\\Root\\" + file);
		
			
			if (!f.exists()) {
			
			f.createNewFile();
			System.out.println(" ----- File is Created With the Name ----- " + file);
			}
			else {
				System.out.println(" ----- File is Already Existing.....!!!!! Please Give Input With Different File Name ----- ");
			}
	
	}
	
	public void deleteFile(String name) throws CheckedExceptionForBusiness {
		
		String file = name;
		file= file + ".txt";
		String path = System.getProperty("user.dir");
		File f = new File(path+ "\\Root\\"+file);
		if(!f.exists()) {
			throw new CheckedExceptionForBusiness(" ----- File is Not Found ----- ");
		}
		else {
		if(file.equals(f.getName())) {
			f.delete();
			System.out.println(" ----- Successfully Deleted File = " + file);
		}else {
			System.out.println(" ----- File Does Not Match With the Specified Name ----- ");
		}
		}
	}
	
	public void searchFile(String name) {
		
		String file = name;
		int i;
		file= file + ".txt";
		String path = System.getProperty("user.dir");
		File f = new File(path+ "\\Root\\");
		
		String[] list = f.list();
		
		if(list==null) {
	         System.out.println(" ----- Either Directory Does Not Exist or It is a Empty Directory ----- "); 
	      } else { 
	          for ( i=0;i<list.length;i++)
	          {
	              if (file.equals(list[i]))
	              {
	                  System.out.println(" ----- The Specified File with the Name ----- "+ name + " ----- is Available ----- ");
	                  break;
	              }
	             
	          }
	          if(i==list.length) {
	        	  
	        	  System.out.println(" ----- The File is Not Available ----- ");
	          }
	          
	}
	
	}
}
