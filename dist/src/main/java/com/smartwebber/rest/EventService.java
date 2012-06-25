package com.smartwebber.rest;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Singleton;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.ws.rs.Path;
import javax.ws.rs.core.MultivaluedMap;

import com.smartwebber.model.Event;

/**
 * <p>
 *     A JAX-RS endpoint for handling {@link Event}s. Inherits the actual
 *     methods from {@link BaseEntityService}, but implements additional search
 *     criteria.
 * </p>
 *
 * @author Marius Bogoevici
 */
@Path("/events")
/**
 * <p>
 *     This is a stateless service, so a single shared instance can be used in this case.
 * </p>
 */
@Singleton
public class EventService extends BaseEntityService<Event> {

    public EventService() {
        super(Event.class);
    }

    /**
     * <p>
     *    We override the method from parent in order to add support for additional search
     *    criteria for events.
     * </p>
     * @param queryParameters - the HTTP query parameters received by the endpoint
     * @param criteriaBuilder - @{link CriteriaBuilder} used by the invoker
     * @param root  @{link Root} used by the invoker
     * @return
     */
    @Override
    protected Predicate[] extractPredicates(
            MultivaluedMap<String, String> queryParameters, 
            CriteriaBuilder criteriaBuilder, 
            Root<Event> root) {
        List<Predicate> predicates = new ArrayList<Predicate>() ;
        
        if (queryParameters.containsKey("category")) {
            String category = queryParameters.getFirst("category");
            predicates.add(criteriaBuilder.equal(root.get("category").get("id"), category));
        }
        
        return predicates.toArray(new Predicate[]{});
    }
}
