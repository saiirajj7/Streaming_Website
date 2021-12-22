<?php
class VideoProvider {
    public static function getUpNext($con, $currentVideo) {
        $query = $con->prepare("SELECT * FROM videos
                            WHERE entityId=:entityId AND id != :videoId");
        $query->bindValue(":entityId", $currentVideo->getEntityId());
        $query->bindValue(":videoId", $currentVideo->getId());
        
        $query->execute();

        if($query->rowCount() == 0) {
            $query = $con->prepare("SELECT * FROM videos
                                    WHERE id != :videoId");
            $query->bindValue(":videoId", $currentVideo->getId());
            $query->execute();
        }

        $row = $query->fetch(PDO::FETCH_ASSOC);
        return new Video($con, $row);
    }



    public static function getEntityVideoForUser($con, $entityId, $username) {
        $query = $con->prepare("SELECT videoId FROM `videoProgress` 
                                INNER JOIN videos
                                ON videoProgress.videoId = videos.id
                                WHERE videos.entityId = :entityId 
                                AND videoProgress.username = :username
                                ORDER BY videoProgress.dateModified DESC
                                LIMIT 1");
        $query->bindValue(":entityId", $entityId);
        $query->bindValue(":username", $username);
        

        if($query->rowCount() == 0) {
            $query = $con->prepare("SELECT id FROM videos 
                                    WHERE entityId=:entityId");
            $query->bindValue(":entityId", $entityId);
            $query->execute();
        }

        return $query->fetchColumn();
    }
}
?>