/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phms;

/**
 *
 * @author $ubha
 * 
 *  row[0] = prod.get(i).getmid();
    row[1] = prod.get(i).getmname();
    row[2] = prod.get(i).gettype();
    row[3] = prod.get(i).getexd();
    row[4] = prod.get(i).getavailable();
    row[5] = prod.get(i).getprice();
 * 
 */
public class Product {
    
    private String mid;
    private String mname;
    private String type;
    private String exd;
    private String available;
    private String price;
    
    public Product(String mid, String mname,String type, String exd,String available, String price)
    {
        this.mid=mid;
        this.mname=mname;
        this.type=type;
        this.exd=exd;
        this.available=available;
        this.price=price;
        
        
    }
            
    public String getmid()
    {
        return mid;
    }
    public String getmname()
    {
        return mname;
    }
    public String gettype()
    {
        return type;
    }
    public String getexd()
    {
        return exd;
    }
    public String getavailable()
    {
        return available;
    }
    public String getprice()
    {
        return price;
    }
    
}
