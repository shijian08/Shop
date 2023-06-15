package model;

public class staritem {
    private int id;
    private String starname;
    private String content;
    private double price;
    private String thumbnail;

    public staritem() {
    }

    public staritem(int id, String starname, String content, double price) {
        this.id = id;
        this.starname = starname;
        this.content = content;
        this.price = price;
    }

    public staritem(int id, String starname, String content, double price, String thumbnail) {
        this.id = id;
        this.starname = starname;
        this.content = content;
        this.price = price;
        this.thumbnail = thumbnail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStarname() {
        return starname;
    }

    public void setStarname(String starname) {
        this.starname = starname;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Override
    public int hashCode() {
        // TODO Auto-generated method stub
        return this.getId() + this.getStarname().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        // TODO Auto-generated method stub
        if(this == obj) { return true; }
        if(obj instanceof staritem) {
            staritem i = (staritem)obj;
            if(this.getId() == i.getId()&&this.getStarname().equals(i.getStarname())) {
                return true;
            }
            else { return false; }
        }
        else { return false; }
    }

    public String toString()
    {
        return "商品编号：" + this.getId() + ",商品名称：" + this.getStarname();
    }
}
