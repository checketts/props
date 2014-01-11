package com.ssoward.props.service;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ssoward
 * Date: 12/20/12
 */
@Service("carService")
public class CarServiceImpl implements CarService {
    private static List<String> carList = new ArrayList<String>();

    public List<String> getAllCars() {
        return carList;
    }

    public void addCar(String car) {
        carList.add(car);
    }

    public void deleteCar(String car) {
        if (carList.contains(car)) {
            carList.remove(car);
        }
    }

    public void deleteAll() {
        carList.clear();
    }
}
