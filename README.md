# Courier Service
## Overview
Kiki's Courier Service is a small distance courier service operating in the city of Koriko. The service aims to deliver packages efficiently and affordably with the help of a fleet of vehicles and dedicated driver partners.

## Problem Statement
Delivery Cost Estimation with Offers
As a new business, Kiki's Courier Service offers various discounts to attract customers. The discounts are applied based on specific criteria related to package weight and distance to the destination.

## Offer Criteria
#### OFR001 10% Discount:   
Applicable for packages with a distance less than 200km and a weight between 70-200kg.

#### OFR002 7% Discount: 
Applicable for packages with a distance between 50-150km and a weight between 100-250kg.

#### OFR003 5% Discount: 
Applicable for packages with a distance between 50-250km and a weight between 10-150kg.

### Solution Approach
The solution is implemented as a command-line application in Ruby on Rails. It calculates the total delivery cost for each package considering the base delivery cost, package weight, and distance to the destination. It also applies any applicable discounts based on the offer codes provided.

# Installation    
Set up the project    

### Clone the repository:     
`git clone https://github.com/mohammadshahnawazngp7/courier_service.git`      
### Change into the project directory:   
`cd courier_service`

### Install Dependencies:    
`bundle install`  
`rails db:create`

`rails db:migrate`

### Run the Server:
`rails server`   
or  
`rails s`

### Add RSpec to the Gemfile:
Open your project's Gemfile and add the rspec-rails gem to the :development, :test group.  

`gem 'rspec-rails'`  
`bundle install`

### Initialize RSpec:
`rails generate rspec:install`

### Run RSpec:
You can now run RSpec to execute your tests.

`rspec`  
or
`rspec spec/models`

## Run command line interface application:  

Create `delivery_cost_estimation` file in this path bin/delivery_cost_estimation and add the below content.   


#!/usr/bin/env ruby  
#frozen_string_literal: true    

require_relative '../config/environment'
require 'cli'

CLI.new.run


#### Now run the below command    

`./bin/delivery_cost_estimation`


### Input Format

| base_delivery_cost | no_of_packages |
|--------------------|----------------|
| 100                | 3              |

| pkg_id | pkg_weight_in_kg | distance_in_km | offer_code |
|--------|------------------|----------------|------------|
| PKG1   | 5                | 5              | OFR001     |
| PKG2   | 15               | 5              | OFR002     |
| PKG3   | 10               | 100            | OFR003     |



### Output Format

| pkg_id | discount | total_cost |
|--------|----------|------------|
| PKG1   | 0        | 175        |
| PKG2   | 0        | 275        |
| PKG3   | 35       | 665        |

    
       
    

     


## Happy coding!!

