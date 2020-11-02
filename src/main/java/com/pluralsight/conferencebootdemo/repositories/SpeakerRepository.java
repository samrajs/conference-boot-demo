package com.pluralsight.conferencebootdemo.repositories;

import com.pluralsight.conferencebootdemo.models.Speaker;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpeakerRepository extends JpaRepository<Speaker, Long> {
}
