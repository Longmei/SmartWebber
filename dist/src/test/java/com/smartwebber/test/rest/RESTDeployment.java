package com.smartwebber.test.rest;

import org.jboss.shrinkwrap.api.spec.WebArchive;

import com.smartwebber.model.Booking;
import com.smartwebber.rest.BaseEntityService;
import com.smartwebber.service.MediaManager;
import com.smartwebber.service.MediaPath;
import com.smartwebber.service.SeatAllocationService;
import com.smartwebber.test.TicketMonsterDeployment;
import com.smartwebber.test.rest.util.MockMultivaluedMap;

public class RESTDeployment {

    public static WebArchive deployment() {
        return TicketMonsterDeployment.deployment()
                .addPackage(Booking.class.getPackage())
                .addPackage(BaseEntityService.class.getPackage())
                .addPackage(MockMultivaluedMap.class.getPackage())
                .addClass(SeatAllocationService.class)
                .addClass(MediaPath.class)
                .addClass(MediaManager.class);
    }
    
}
