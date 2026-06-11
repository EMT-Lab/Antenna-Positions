function positionFromPhoto(phantomCenter,phantomRadius,tumorCenter,tumorRadius,glandCenter,glandRadius,antennaPositions,physicalRadius)

    radiusMeters = physicalRadius/100;
    scale = radiusMeters/phantomRadius;
    
    tumorRadiusMeters = tumorRadius*scale;
    glandRadiusMeters = glandRadius*scale;
    phantomCenterMeters = phantomCenter*scale;
    phantomCenterMeters(2) = -phantomCenterMeters(2);
    tumorCenterMeters = tumorCenter*scale;
    tumorCenterMeters(2) = -tumorCenterMeters(2);
    glandCenterMeters = glandCenter*scale;
    glandCenterMeters(2) = -glandCenterMeters(2);
    antennaPositionsMeters = antennaPositions*scale;
    antennaPositionsMeters(:,2) = -antennaPositionsMeters(:,2);
    tumorCenterMeters = tumorCenterMeters - phantomCenterMeters;
    glandCenterMeters = glandCenterMeters - phantomCenterMeters;
    antennaPositionsMeters = antennaPositionsMeters - phantomCenterMeters;
    phantomCenterMeters = phantomCenterMeters - phantomCenterMeters;
    
    antennaPositionsMeters

    figure
    hold on
    viscircles(phantomCenterMeters, radiusMeters, 'Color', 'r')
    viscircles(tumorCenterMeters, tumorRadiusMeters, 'Color', 'y')
    viscircles(glandCenterMeters, glandRadiusMeters, 'Color', 'g')
    scatter(antennaPositionsMeters(:,1),antennaPositionsMeters(:,2),'filled','blue')
    scatter(tumorCenterMeters(:,1),tumorCenterMeters(:,2),'filled','yellow')
    scatter(glandCenterMeters(:,1),glandCenterMeters(:,2),'filled','green')
    scatter(phantomCenterMeters(:,1),phantomCenterMeters(:,2),'filled','red')
    axis square

end