/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author GRZEŚ
 */
public class Car {

    private String vin;
    private String marka;
    private String model;
    private String rok; 
    private String opis;

    public Car() {
    }

    public Car(String vin, String marka, String model, String rok, String opis) {
        this.vin = vin;
        this.marka = marka;
        this.model = model;
        this.rok = rok;
        this.opis = opis;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getMarka() {
        return marka;
    }

    public void setMarka(String marka) {
        this.marka = marka;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getRok() {
        return rok;
    }

    public void setRok(String rok) {
        this.rok = rok;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    

}
