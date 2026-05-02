module "rg" {
    source = "../Child/rg"
    rg-name = "hen-rg"
    rg-location = "central india" 
}

module "stg" {
    depends_on = [ module.rg ]
    source = "../Child/storage"
    stg-name = "henstg009"
    rg-location = "central india"
    rg-name = "hen-rg"
  
}

module "ctr09" {
    source = "../Child/container"
    ctr-name = "henctr"
    stg-id = module.stg.stg_id
  
}
