package com.survivor.survivormode.Entities;


public class Survivor {
    private String id;
    private String name;
    private int age;
    private String gender;

  //  @ManyToOne
   // @JoinColumn(name = "location_id")
    private Location location;

  //  @OneToOne
   // @JoinColumn(name = "flag_id")
    private Flag flag;

    //@OneToOne
   // @JoinColumn(name = "inventory_id")
    private Inventory inventory;

    public Survivor( String id, String name, int age, String gender, Location location, Flag flag, Inventory inventory){
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.location = location;
        this.flag = flag;
        this.inventory = inventory;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
    public Location getLocation() {
        return location;
    }

    public void setFlag(Flag flag) {
        this.flag = flag;
    }
    public Flag getFlag() {
        return flag;
    }

    public void setInventory(Inventory inventory) {
        this.inventory = inventory;
    }

    public Inventory getInventory() {
        return inventory;
    }



}
