package main;

public class Item {
    private Long id;
    private String name;
    private String description;
    private double price;
    private int piecesSold;
    private String arrivalDate;
    private String imageSource;

    public Item() {

    }

    public Item(Long id, String name, String description, double price, int piecesSold, String arrivalDate, String imageSource) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.piecesSold = piecesSold;
        this.arrivalDate = arrivalDate;
        this.imageSource = imageSource;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getPiecesSold() {
        return piecesSold;
    }

    public void setPiecesSold(int piecesSold) {
        this.piecesSold = piecesSold;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getImageSource() {
        return imageSource;
    }

    public void setImageSource(String imageSource) {
        this.imageSource = imageSource;
    }
}
