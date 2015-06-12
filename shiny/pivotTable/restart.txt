From http://rstudio.github.io/shiny-server/latest/#restarting-an-application on 2014-12-08

3.1.1 Restarting an Application

Some changes you make to the code, assets, or environment of an application will require the application's R processes to be restarted for the changes to take effect. These include upgrades to packages that are used by the application, changes to .Renviron/.Rprofile or other R source files, or modifications to data files that are read only at startup time.

(Fortunately, Shiny applications generally do not need to be restarted when changes to ui.R or server.R are made, as Shiny will check for changes to these files on page load.)

An application can be restarted by altering the "modified time" on a file named restart.txt in the application's directory. This can most easily be done using the touch utility as in touch restart.txt which will update the modified timestamp on this file to the current time. Upon the next new connection to the application, Shiny Server will spawn a new R process to run the "new" (restarted) Shiny Application for this and future users. When this occurs, the old processes will remain unaltered, and open connections will remain active and valid until the last connection closes itself.

This can cause unintuitive consequences regarding the number of processes that may be running for a given application. Even if using a single-process Simple Scheduler for an application, it is possible that there would be multiple R processes associated with this application, each corresponding to a separate restart timestamp. This behavior is likely to change in future versions of Shiny Server.
