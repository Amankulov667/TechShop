module com {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.example.contr to javafx.fxml;
    exports com.example.contr;
}