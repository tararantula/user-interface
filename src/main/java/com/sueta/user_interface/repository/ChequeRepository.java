package com.sueta.user_interface.repository;

import com.sueta.user_interface.entity.Cheque;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChequeRepository extends JpaRepository<Cheque,Integer> {
}
