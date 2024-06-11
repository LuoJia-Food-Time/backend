package com.example.service;

import com.example.entity.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class AddressServiceTest {
@Autowired
AddressService addressService;

    @org.junit.jupiter.api.Test
    void add() {
        Address address =new Address();
        addressService.add(address);
    }
}