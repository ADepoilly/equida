/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Matteo
 */
public class TypeCheval {
    
    private int id;
    private String libelle;
    private String description;
    private ArrayList<Cheval> lesChevaux;
    private Vente laVente;
    
    
    public TypeCheval(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public ArrayList<Cheval> getLesChevaux(){
        return lesChevaux;
    }
    
    public void setLesChevaux(ArrayList<Cheval> lesChevaux){
        this.lesChevaux = lesChevaux;
    }
    
    public void addUnCheval(Cheval pUnCheval){
        if (lesChevaux == null){
            lesChevaux = new ArrayList<Cheval>();
        }
        lesChevaux.add(pUnCheval);
    }
 
    public Vente getLaVente(){
        return laVente;
    }
    
    public void setLaVente(Vente pLaVente){
        this.laVente = pLaVente;
    }
    
}
