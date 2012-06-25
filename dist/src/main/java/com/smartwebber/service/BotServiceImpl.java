package com.smartwebber.service;

import java.util.List;
import java.util.logging.Logger;

import javax.ejb.Timer;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Event;
import javax.enterprise.event.Observes;
import javax.inject.Inject;

import org.jboss.errai.bus.server.annotations.Service;

import com.smartwebber.model.Booking;
import com.smartwebber.monitor.client.shared.BotService;
import com.smartwebber.monitor.client.shared.qualifier.BotMessage;
import com.smartwebber.rest.BookingService;
import com.smartwebber.util.CircularBuffer;
import com.smartwebber.util.MultivaluedHashMap;

/**
 * Implementation of {@link BotService}.
 * 
 * Errai's @Service annotation exposes this service as an RPC endpoint.
 * 
 * @author Christian Sadilek <csadilek@redhat.com>
 * @author Pete Muir
 */
@ApplicationScoped
@Service
public class BotServiceImpl implements BotService {

    private static final int MAX_LOG_SIZE = 50;

    private CircularBuffer<String> log;

    @Inject
    private Bot bot;
    
    @Inject
    private BookingService bookingService;
    
    @Inject
    private Logger logger;
    
    @Inject @BotMessage
    private Event<String> event;

    private Timer timer;

    public BotServiceImpl() {
        log = new CircularBuffer<String>(MAX_LOG_SIZE);
    }

    @Override
    public void start() {
        synchronized (bot) {
            if (timer == null) {
                logger.info("Starting bot");
                timer = bot.start();
            }
        }
    }

    @Override
    public void stop() {
        synchronized (bot) {
            if (timer != null) {
                logger.info("Stopping bot");
                bot.stop(timer);
                timer = null;
            }
        }
    }
    
    @Override
    public void deleteAll() {
        synchronized (bot) {
            stop();
            for (Booking booking : bookingService.getAll(MultivaluedHashMap.<String, String>empty())) {
                bookingService.deleteBooking(booking.getId());
                event.fire("Deleted booking " + booking.getId() + " for " + booking.getContactEmail() + "\n");
            }
        }
    }

    public void newBookingRequest(@Observes @BotMessage String bookingRequest) {
        log.add(bookingRequest);
    }

    @Override
    public List<String> fetchLog() {
        return log.getContents();
    }

}