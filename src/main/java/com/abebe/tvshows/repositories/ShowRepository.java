package com.abebe.tvshows.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.abebe.tvshows.models.Show;

@Repository
public interface ShowRepository extends CrudRepository<Show, Long>{
	List<Show> findAll();

}
