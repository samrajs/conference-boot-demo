package com.pluralsight.conferencebootdemo.repositories;

import com.pluralsight.conferencebootdemo.models.Session;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SessionRepository extends JpaRepository<Session, Long> {
}
