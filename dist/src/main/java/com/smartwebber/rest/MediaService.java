package com.smartwebber.rest;

import java.io.File;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;


import com.smartwebber.model.MediaItem;
import com.smartwebber.service.MediaManager;

@Path("/media")
public class MediaService {
    
    @Inject
    private MediaManager mediaManager;
    
    @Inject EntityManager entityManager;

    @GET
    @Path("/cache/{cachedFileName:\\S*}")
    @Produces("*/*")
    public File getCachedMediaContent(@PathParam("cachedFileName") String cachedFileName) {
        return mediaManager.getCachedFile(cachedFileName);
    }

    @GET
    @Path("/{id:\\d*}")
    @Produces("*/*")
    public File getMediaContent(@PathParam("id") Long id) {
        return mediaManager.getCachedFile(mediaManager.getPath(entityManager.find(MediaItem.class, id)).getUrl());
    }
}
