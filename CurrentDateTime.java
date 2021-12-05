import java.time.*;
import java.util.*;

public class CurrentDateTime {
    public static void main(String[] args) {

        String[] ids = TimeZone.getAvailableIDs();

        for (String id : ids) {
            System.out.println(TimeZone.getTimeZone(id));
        }
        
        System.out.println("\nTotal TimeZone ID " + ids.length);


        System.out.println("Calendar.getInstance().getTime()  " + Calendar.getInstance().getTime());
        System.out.println("LocalDateTime.now()               " + LocalDateTime.now());
        System.out.println("TimeZone.getDefault()             " + TimeZone.getDefault());
        System.out.println("user.timezone                     " + System.getProperty("user.timezone"));

    }
} 

// javac CurrentDateTime.java
// java -Xmx128M -Xms16M CurrentDateTime
// java -Xmx128M -Xms16M CurrentDateTime > CurrentDateTime.txt
// java -Xmx128M -Xms16M -verbose:jni -verbose:class CurrentDateTime
// java -Xmx128M -Xms16M -verbose:jni -verbose:class CurrentDateTime  > CurrentDateTimeVerbose.txt
// add -Duser.timezone="Europe/Rome" to test
