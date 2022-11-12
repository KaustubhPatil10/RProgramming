cars=read.csv("C:\\python\\Rprogramming\\Cars93.csv")
tble_cars=as_tibble(cars)
arrange(tble_cars,Model,Manufacturer) 

arrange(tble_cars,Manufacturer,desc(Model))

rename(tble_cars,Cars93,mf=Model)