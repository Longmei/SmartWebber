package com.smartwebber.test.rest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.inject.Inject;
import javax.ws.rs.core.MultivaluedMap;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.junit.Test;
import org.junit.runner.RunWith;

import com.smartwebber.model.Show;
import com.smartwebber.rest.ShowService;
import com.smartwebber.test.rest.util.MockMultivaluedMap;

@RunWith(Arquillian.class)
public class ShowServiceTest {
    
    @Deployment
    public static WebArchive deployment() {
        return RESTDeployment.deployment();
    }
   
    @Inject
    private ShowService showService;
    
    @Test
    public void testGetShowById() {
        
        // Test loading a single show
        Show show = showService.getSingleInstance(1l);
        assertNotNull(show);
        assertEquals("Roy Thomson Hall", show.getVenue().getName());
        assertEquals("Rock concert of the decade", show.getEvent().getName());
        
    }
    
    @Test
    public void testPagination() {
        
        // Test pagination logic
        MultivaluedMap<String, String> queryParameters = new MockMultivaluedMap<String, String>();
        
        queryParameters.add("first", "2");
        queryParameters.add("maxResults", "1");
        
        List<Show> shows = showService.getAll(queryParameters);
        assertNotNull(shows);
        assertEquals(1, shows.size());
        assertEquals("Roy Thomson Hall", shows.get(0).getVenue().getName());
        assertEquals("Shane's Sock Puppets", shows.get(0).getEvent().getName());
    }
    
    @Test
    public void testGetShowsByVenue() {
        
        // Test getting shows by venue
        MultivaluedMap<String, String> queryParameters = new MockMultivaluedMap<String, String>();
        
        queryParameters.add("venue", "1");
        
        List<Show> shows = showService.getAll(queryParameters);
        assertNotNull(shows);
        assertEquals(2, shows.size());
        for (Show s: shows) {
            assertEquals("Roy Thomson Hall", s.getVenue().getName());
        }
    }
    
    @Test
    public void testGetShowsByEvent() {
        
        // Test getting shows by event
        MultivaluedMap<String, String> queryParameters = new MockMultivaluedMap<String, String>();
        
        queryParameters.add("event", "1");
        
        List<Show> shows = showService.getAll(queryParameters);
        assertNotNull(shows);
        assertEquals(2, shows.size());
        for (Show s: shows) {
            assertEquals("Rock concert of the decade", s.getEvent().getName());
        }
    }
    
    @Test
    public void testGetShowByPerformance() {
        
        // Test getting shows by performance
        Show show = showService.getShowByPerformance(1l);
        assertNotNull(show);
        assertEquals("Roy Thomson Hall", show.getVenue().getName());
        assertEquals("Rock concert of the decade", show.getEvent().getName());
    }

}
