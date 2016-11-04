require "spec_helper"

describe Prct06Dietgem do
  
  it "Debe existir un número de versión" do
    expect(Prct06Dietgem::VERSION).not_to be nil
  end
  
  describe MenuDiet do

    before :all do
      
      @menu = MenuDiet.new("ALMUERZO", 786.9, 19, 34, 47, "30 - 35%")
      @plato1 = Plato.new("Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón", "200")
      @plato2 = Plato.new("Escalope de ternera","1 bistec mediano", "100")
      @plato3 = Plato.new("Ensalada básica con zanahoria rallada","guarnición", "120")
      @plato4 = Plato.new("Mandarina","1 grande", "180")
      @plato5 = Plato.new("Pan de trigo integral","1 rodaja", "20")
      
      @menu.push(@plato1)
      @menu.push(@plato2)
      @menu.push(@plato3)
      @menu.push(@plato4)
      @menu.push(@plato5)
      
      @menu2 = MenuDiet.new("MERIENDA", 313.6, 10, 30, 60, "15%")
      @plato6 = Plato.new("Galletas de leche con chocolate y yogur"," 4 unidades", "46")
      @plato7 = Plato.new("Flan de vainilla sin huevo", "1 unidad", "110")
      
      @menu2.push_plato(@plato6)
      @menu2.push_plato(@plato7)
  
    end
    
    it "Debe existir un título para el menú." do
      expect(@menu.get_titulo()).not_to be nil
    end
      
    it "Debe existir el porcentaje que el menú representa de la ingesta diaria" do
      expect(@menu.get_porcentajeIngesta()).not_to be nil
    end
      
    it "Debe existir la descripción de un plato." do
      expect(@menu.get_descripcion()).not_to be nil
    end
    
    it "Debe existir la porcíon recomendada de un plato." do 
      expect(@menu.get_porcion()).not_to be nil
    end
  
    it "Debe existir un Valor Calórico Total." do
      expect(@menu.get_vct()).not_to be nil
    end
        
    it "Debe existir el porcentaje de proteínas de un conjunto de platos." do
      expect(@menu.get_porcentajeProteina()).not_to be nil
    end
       
    it "Debe existir el porcentaje de grasas de un conjunto de platos." do
      expect(@menu.get_porcentajeGrasas()).not_to be nil
    end
      
    it "Debe existir el porcentaje de hidrados de carbono de un conjunto de platos." do
      expect(@menu.get_porcentajeHidratos()).not_to be nil
    end

    it "Existe un método para obtener el título del menú." do
      expect(@menu.get_titulo()).to eq("Almuerzo")
    end
      
    it "Existe un método para obtener el porcentaje de la ingesta diaria." do
      expect(@menu.get_porcentajeIngesta()).to eq("30 - 35%")
    end
    
    it "Existe un método para obtener el V.C.T." do
      expect(@menu.get_vct()).to eq(786.9)
    end
      
    it "Existe un método para obtener el porcentaje de proteínas de un conjunto de platos." do
      expect(@menu.porcentajeProteinas()).to eq(19)
    end
    
    it "Existe un método para obtener el porcentaje de grasas de un conjunto de platos." do
      expect(@menu.get_porcentajeGrasas()).to eq(34)
    end
      
    it "Existe un método para obtener el porcentaje de hidratos de carbono de un conjunto de platos." do
      expect(@menu.get_porcentajeHidratos()).to eq(47)
    end
    
  end
  
  describe Plato do
  
  end
  
end
  
  
  
  
  it "Debe existir un conjunto de platos." do
    
  end
     
  
  it "Existe un método para obtener la descripción del plato." do
    
  end
    

    
  it "Existe un método para obtener un plato." do
    expect(@plato1.get_descripcion()).to eq("Macarrones con salsa de tomate y queso parmesano")
  end
    
  it "Existe un método para obtener el conjunto de platos." do
    
  end
    

    
  it "Existe un método para obtener el menú formateado" do
    
  end

end