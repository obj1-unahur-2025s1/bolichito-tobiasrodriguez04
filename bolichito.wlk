import objetos.*
import personas.*

object bolichito{
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera
    
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador() {return objetoEnMostrador}
    method objetoEnVidriera(unaCosa){objetoEnVidriera = unaCosa}
    method objetoEnMostrador(unaCosa){objetoEnMostrador = unaCosa}        
    
    method esBrillante() {
        return objetoEnVidriera.material().brilla() and objetoEnVidriera.material().brilla()}
    
    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()}
   
    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()}
    
    method tieneAlgoDeColor(unColor) {
        return objetoEnMostrador.color(unColor) == unColor or
        objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return not self.estaEquilibrado() or
        self.esMonocromatico()
    }
    
    method podemosOfrecerA(unaPersona) {
        return unaPersona.leGusta(objetoEnVidriera) or unaPersona.leGusta(objetoEnMostrador)}

    method intercambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
}