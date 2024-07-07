package phms;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author $ubha
 */

/*
            row[0]=list.get(i).getid();
            row[1]=list.get(i).getname();
            row[2]=list.get(i).getcompany();
            row[3]=list.get(i).gettype();
            row[4]=list.get(i).getmdate();
            row[5]=list.get(i).getedate();
            row[6]=list.get(i).getquant();
            row[7]=list.get(i).getprice();

String query="INSERT INTO `medicine_stock`(m_id,`m_name`,) VALUES("+jTextField1.getText()+",'"+jTextField2.getText()+"',"+jTextField3.getText()+","+jTextField4.getText()+","+jTextField5.getText()+",'"+jTextField6.getText()+"',"+jTextField7.getText()+","+jTextField9.getText()+");";
    executeSQlQuery(query, "Inserted");
*/

public class Stock {

    private String id;
    private String name;
     private String company;
    private String type;
     private String mdate;
    private String edate;
    private String place;
    private String quant;
    private String price;
    
    public Stock(String id,String name,String company,String type,String mdate,String edate,String place,String quant, String price)
    {
        this.id= id;
        this.name=name;
        this.company=company;
        this.type=type;
        this.mdate=mdate;
        this.edate=edate;
        this.place=place;
        this.quant=quant;
        this.price=price;
    }

            
    public String getid()
    {
        return id;
    }
    public String getname()
    {
        return name;
    }
    
    public String getcompany()
    {
        return company;
    }
    public String gettype()
    {
        return type;
    }
    
    public String getmdate()
    {
        return mdate;
    }
    public String getedate()
    {
        return edate;
    }
    public String getplace()
    {
        return place;
    }
    
    public String getquant()
    {
        return quant;
    }
    public String getprice()
    {
        return price;
    }

    
  }
