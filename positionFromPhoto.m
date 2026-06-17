function positionFromPhoto(phantomCenterMeters,radiusMeters,tumorCentersMeters,tumorRadiiMeters,glandCentersMeters,glandRadiiMeters,antennaPositionsMeters)
   
    figure
    hold on
    viscircles(phantomCenterMeters, radiusMeters, 'Color', 'r')
    viscircles(tumorCentersMeters, tumorRadiiMeters, 'Color', 'y')
    viscircles(glandCentersMeters, glandRadiiMeters, 'Color', 'g')
    scatter(antennaPositionsMeters(:,1),antennaPositionsMeters(:,2),'filled','blue')
    scatter(tumorCentersMeters(:,1),tumorCentersMeters(:,2),'filled','yellow')
    scatter(glandCentersMeters(:,1),glandCentersMeters(:,2),'filled','green')
    scatter(phantomCenterMeters(:,1),phantomCenterMeters(:,2),'filled','red')
    axis square

end