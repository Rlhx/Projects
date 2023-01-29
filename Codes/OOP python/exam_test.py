class face:
  pass

class shape:
    def __init__(self, form:str):
        self.form = form
    def display(self):
        return self.form
    
class Nose:
    def __init(self, taille: int, form):
        self.taille = taille
        self.form = form
    def display(self):
        return "nez de "+str(self.taille) +" forme"+self.form.display()

class color:
    def __init__(self, colo):
        self.colo = colo
    def display(self):
        return self.colo

class hairstyle:
    def __init__(self, hairstyl, colo):
        self.hairstyl = hairstyl
        self.colo = colo
    def display(self):
        return "cheveux "+self.hairstyl +" coleur "+self.colo.display()
    
class face1(face):
    def __init__(self,shap,colo):
        self.shap = shap
        self.colo = colo
            
    def display(self):
        print("Cette face est "+self.shap.display()+" et "+self.colo.display())
        
class face2(face1):
    def __init__(self, shap, colo, hairystyl, colo1):
        super().__init__(shap, colo)
        
        self.obj_hstyl = hairstyle(hairystyl, colo1)
        
    def display(self):
          print("Cette face est "+self.shap.display()+", "+self.colo.display()+" et a des "+self.obj_hstyl.display())
          
            
        
        
shape1 = shape("ronde")
form1 = shape("mince")
color1 = color("noire")
color2 = color("violet")

visage1 = face2(shape1, color1,"deux-tons", color2) 
visage1.display()      
        