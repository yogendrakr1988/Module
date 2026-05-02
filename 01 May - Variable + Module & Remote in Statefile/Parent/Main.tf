module "rg" {
    source = "../Child/rg"
    rg-name = "yogi-rg"
    rg-location = "Central India"
}

module "VNet" {
    depends_on = [module.rg]
    source = "../Child/vnet"
    vnet-name = "yogi-vnet"
    rg-name = "yogi-rg"
    vnet-location = "Central India"
}

module "SubNet" {
    depends_on = [module.VNet]
    source = "../Child/subnet"
    subnet-name = "yogi-subnet"
    rg-name = "yogi-rg"
    vnet-name = "yogi-vnet"
    
}

module "stg" {
    source = "../Child/stg"
    stg-name = "yogistg9898"
    stg-location = "central india"
    rg-name = "yogi-rg"
}

module "ctr" {
    source = "../Child/container"
    ctr-name = "yogi-ctr"
    stg-id = module.stg.stg_id
  
}