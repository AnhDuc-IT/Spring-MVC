package vn.duckuro.spring.domain;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull
    @Size(min = 1, message = "Tên sản phẩm không được để trống")
    private String name;
    @NotNull
    @Min(value = 1, message = "Giá phải lớn hơn không")
    private double price;

    @NotNull
    @Size(min = 1, message = "Chi tiết sản phẩm không được để trống")
    @Column(columnDefinition = "MEDIUMTEXT")
    private String detailDesc;
    private String shortDesc;
    @NotNull
    @Min(value = 1, message = "Số lượng phảilớn hơn không")
    private long quantity;
    private long sold;
    private String factory;
    private String target;
    private String photo;
    // @OneToMany(mappedBy = "product")
    // List<OrderDetail> orderdetails; => Khong can thiet, day la quan he 1 chieu,
    // vi khong can quan tam 1 san pham xuat hien trong bao nhieu don

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getPhoto() {
        return photo;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public long getQuantity() {
        return quantity;
    }

    public long getSold() {
        return sold;
    }

    public String getFactory() {
        return factory;
    }

    public String getTarget() {
        return target;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public void setSold(long sold) {
        this.sold = sold;
    }

    public void setFactory(String factory) {
        this.factory = factory;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    @Override
    public String toString() {
        return "Product [id=" + id + ", name=" + name + ", price=" + price + ", image=" + photo + ", detailDesc="
                + detailDesc + ", shortDesc=" + shortDesc + ", quantity=" + quantity + ", sold=" + sold + ", factory="
                + factory + ", target=" + target + "]";
    }

}
