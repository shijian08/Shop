package model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class cart {


    //购买商品的集合
    private HashMap<staritem,Integer> goods;

    //购物车的总金额
    private double amount;

    //构造方法
    public cart()
    {
        goods = new HashMap<staritem,Integer>();
        amount = 0.0;
    }

    public HashMap<staritem, Integer> getGoods() {
        return goods;
    }

    public void setGoods(HashMap<staritem, Integer> goods) {
        this.goods = goods;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    //添加商品进购物车的方法
    public boolean addGoodsInCart(staritem staritem ,int number) {
        if(goods.containsKey(staritem)) {
            goods.put(staritem, goods.get(staritem) + number);
        }
        else {
            goods.put(staritem, number);
        }
        calAmount(); //重新计算购物车的总金额
        return true;
    }

    //删除商品的方法
    public boolean removeGoodsFromCart(staritem staritem)
    {
        goods.remove(staritem);
        calAmount(); //重新计算购物车的总金额
        return true;
    }

    //统计购物车的总金额
    public double calAmount()
    {
        double sum = 0.0;
        Set<staritem> keys = goods.keySet(); //获得键的集合
        Iterator<staritem> it = keys.iterator(); //获得迭代器对象
        while(it.hasNext())
        {
            staritem i = it.next();
            sum += i.getPrice()* goods.get(i);
        }
        this.setAmount(sum); //设置购物车的总金额
        return amount;
    }

}
