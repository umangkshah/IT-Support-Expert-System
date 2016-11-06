import java.io.*;
import java.util.*;
public class Split
{
	public static void main(String[] args) throws IOException
	{
		ArrayList<ArrayList<String>> kwds = new ArrayList<ArrayList<String>>();
		ArrayList<String> quekwds = new ArrayList<String>();
		BufferedReader br = null;
		int j=0;
		BufferedReader ar= null;
		String quests[]=new String[48];
		String ans[]=new String[48];
		try
		{
			Runtime rt = Runtime.getRuntime();
			String sCurrentLine,ip;
			System.out.println("Enter your question: ");
			Scanner sc = new Scanner(System.in);
			String ques = sc.nextLine();
			br = new BufferedReader(new FileReader("faq_q.txt"));
			ar= new BufferedReader(new FileReader("faq_a.txt"));
			PrintWriter p = new PrintWriter(new File("final.lp"));
			while ((sCurrentLine = br.readLine()) != null)
			{
				ArrayList<String> qkwds = new ArrayList<String>();
				PrintWriter op = new PrintWriter(new File("input.lp"));
				ip=sCurrentLine;
				quests[j]=ip;
				j++;
				ip=ip.toLowerCase();
				String k[]=ip.split("\\W+");
				for(int i=0;i<k.length;i++){
					if(!k[i].equals("is"))
						if(!k[i].equals("not"))
							op.println("exists("+k[i]+").");
				}
				op.close();
				Process pr = rt.exec("sasp basic.lp");
				BufferedReader input = new BufferedReader(new InputStreamReader(pr.getInputStream()));
				String line=null ;
				while((line=input.readLine()) != null)
				{
					if(line.indexOf("KWD") != -1)
		//			p.println(line.substring(line.indexOf("=")+2));
					qkwds.add(line.substring(line.indexOf("=")+2));
				}
				//System.out.println(qkwds);
				kwds.add(qkwds);
				}
				j=0;
				while ((sCurrentLine = ar.readLine()) != null)
				{
					ans[j]=sCurrentLine;
					j++;
				}
				/*  USERS QUESTION */
				ar.close();
				p.close();
				ArrayList<String> qkwds = new ArrayList<String>();
				PrintWriter op = new PrintWriter(new File("input.lp"));
				ques = ques.toLowerCase();
				String k[]=ques.split("\\W+");
					for(int i=0;i<k.length;i++){	
						if(!k[i].equals("is") && !k[i].equals("not"))
							op.println("exists("+k[i]+").");
					}
				op.close();
				Process pro = rt.exec("sasp basic.lp");
				BufferedReader ing = new BufferedReader(new InputStreamReader(pro.getInputStream()));
				String line=null ;
				while((line=ing.readLine()) != null)
				{
				if(line.indexOf("KWD") != -1)
	//			p.println(line.substring(line.indexOf("=")+2));
				qkwds.add(line.substring(line.indexOf("=")+2));
				}
				System.out.println(qkwds);
				quekwds = qkwds;
				/* 		*/
			for(ArrayList<String> x : kwds){
				//System.out.println("Nxt:-  ");
				for(int i=0;i < x.size();i++){
					
				//		System.out.print(x.get(i) + " ");
				}
		}
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if (br != null)
					br.close();
			}
			catch (IOException ex)
			{
				ex.printStackTrace();
			}
		}
		double max1=0.0,max2=0.0,max3=0.0;
		int index1=0,index2=1,index3=2;
		for(int i=0;i<kwds.size();i++)
		{
			int m=(intersection(kwds.get(i),quekwds)).size();
			int z=(union(kwds.get(i),quekwds)).size();
			double k=(double)m/z;
			if(max1<k)
			{	
				max3=max2;
				max2=max1;
				max1=k;
				index3=index2;
				index2=index1;
				index1=i;
			}
			else if(max2<k)
			{	
				max3=max2;
				max2=k;
				index3=index2;
				index2=i;
			}
			else if(max3<k)
			{	
				max3=k;
				index3=i;
			}
		}

		System.out.println(max1);
		System.out.println("Were you looking for: \n");
		System.out.println(quests[index1]);
		System.out.println("\nThis Might Help:");
		System.out.println(ans[index1]);
		System.out.println(max2);
		System.out.println("Were you looking for: \n");
		System.out.println(quests[index2]);
		System.out.println("\nThis Might Help:");
		System.out.println(ans[index2]);
		System.out.println(max3);
		System.out.println("Were you looking for: \n");
		System.out.println(quests[index3]);
		System.out.println("\nThis Might Help:");
		System.out.println(ans[index3]);
	}
	static ArrayList<String> intersection(ArrayList<String> AL1, ArrayList<String> AL2){   
    ArrayList<String> empty = new ArrayList<String>();
    ArrayList<String> empty1 = new ArrayList<String>();
    if (AL1.isEmpty()){
        return AL1;
    }
    else
    {
        String s = AL1.get(0);
        if(AL2.contains(s))
            empty.add(s);
            empty1.addAll(AL1.subList(1, AL1.size()));
            empty.addAll(intersection(empty1, AL2));
            return empty;
    }
}
    static ArrayList<String> union(ArrayList<String> AL1, ArrayList<String> AL2)
    {   
    ArrayList<String> empty = new ArrayList<String>();
    empty.addAll(AL1);
    empty.addAll(AL2);
    return empty;
    }
}
