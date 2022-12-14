package com.emergentes.modelo;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author CJ
 */
public class GestorAlmacen {
    private ArrayList<Almacen> lista;

    public GestorAlmacen() {
        this.lista = new ArrayList<Almacen>();
    }

    public ArrayList<Almacen> getLista() {
        return lista;
    }

    public void setLista(ArrayList<Almacen> lista) {
        this.lista = lista;
    }
    
    public void insertarProducto(Almacen item){
        this.lista.add(item);
    }
    
    public void modificarProducto(int pos, Almacen item){
        this.lista.set(pos, item);
    }
    
    public void eliminarProducto(int pos){
        this.lista.remove(pos);
    }
    
    public int obtieneId(){
        int idaux = 0;
        for (Almacen item : lista) {
            idaux = item.getId();
        }
        return idaux + 1;
    }
    
    public int ubicarProducto(int id){
        int pos = -1;
        Iterator<Almacen> it = lista.iterator();
        while(it.hasNext()){
            ++pos;
            Almacen aux = it.next();
            if(aux.getId() == id){
                break;
            }
        }
        return pos;
    }
}
