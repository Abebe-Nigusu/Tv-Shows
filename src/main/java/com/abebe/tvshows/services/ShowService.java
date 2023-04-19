package com.abebe.tvshows.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abebe.tvshows.models.Show;
import com.abebe.tvshows.repositories.ShowRepository;


@Service
public class ShowService {

	@Autowired
	private ShowRepository showRepo;

	public Show getOne(Long id) {
		Optional<Show> show = showRepo.findById(id);
		return show.isPresent() ? show.get() : null;
	}

	public List<Show> getAll() {
		return (List<Show>) showRepo.findAll();
	}

	public Show create(Show show) {
		return showRepo.save(show);
	}

	public Show update(Show show) {
		return showRepo.save(show);
	}

	public void delete(Long id) {
		showRepo.deleteById(id);
	}


}
