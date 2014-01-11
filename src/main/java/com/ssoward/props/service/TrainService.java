package com.ssoward.props.service;

import com.ssoward.props.beans.Train;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ssoward
 * Date: 01/09/14
 */
public interface TrainService {
    public List<Train> getAllTrains();

    public Train getTrainById(Long id);

    public void addTrain(Train train);

    public void deleteTrainById(Long id);

    public void deleteAll();

    public void updateTrain(Train train);
}
