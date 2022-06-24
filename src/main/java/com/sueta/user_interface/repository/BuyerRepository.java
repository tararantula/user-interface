package com.sueta.user_interface.repository;

import com.sueta.user_interface.entity.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuyerRepository extends JpaRepository<Buyer,Integer> {
    boolean existsByName(String name);
}
